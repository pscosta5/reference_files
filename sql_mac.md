# How to set up SQL Server access on macOS
*Guidance from this [pyodbc guide](https://github.com/mkleehammer/pyodbc/wiki/Connecting-to-SQL-Server-from-Mac-OSX) and this [anaconda issue](https://github.com/ContinuumIO/anaconda-issues/issues/8902)*
## Create a conda environment
```
conda create -n sql_env python=3.7 pyodbc pandas
conda activate sql_env
```
## Get drivers
Download `unixodbc` from the anaconda channel and `freetds` from the conda forge channel
```
conda install -c anaconda unixodbc
conda install -c conda-forge freetds
```
## Set up freetds
Run `tsql -C` in terminal to find location of `freetds.conf` file
```
Compile-time settings (established with the "configure" script)
                            Version: freetds v1.1rc3
             freetds.conf directory: /Users/pcosta/miniconda3/envs/sql_env/etc
     MS db-lib source compatibility: no
        Sybase binary compatibility: no
                      Thread safety: yes
                      iconv library: yes
                        TDS version: auto
                              iODBC: no
                           unixodbc: yes
              SSPI "trusted" logins: no
                           Kerberos: no
                            OpenSSL: yes
                             GnuTLS: no
                               MARS: yes
```
At the end of this `freetds.conf` file, add the server. To create a connection for the server `ZC1Q2PSQLGE1V`, add to the end of the file:
```
[MYMSSQL]
	host = ZC1Q2PSQLGE1V.corp.companyname.com
	port = 1433
	tds version = 7.3
```
Test your connection
```
tsql -S MYMSSQL -U FRD\\pcosta
```
Will then ask for your password. Type it in! If you are a good person you'll get no errors.
```
locale is "en_US.UTF-8"
locale charset is "UTF-8"
using default charset "UTF-8"
```
You can now write sql on the command line!
```
SELECT TOP 10 * FROM quantdb.dev.loan
GO
```
Type in `exit` to bounce

## Set up unixodbc
Run `odbcinst -j` to find location of `odbcinst.ini` and `odbc.ini` files
```
unixODBC 2.3.7
DRIVERS............: /etc/odbcinst.ini
SYSTEM DATA SOURCES: /etc/odbc.ini
FILE DATA SOURCES..: /etc/ODBCDataSources
USER DATA SOURCES..: /Users/pcosta/.odbc.ini
SQLULEN Size.......: 8
SQLLEN Size........: 8
SQLSETPOSIROW Size.: 8
```
You probably can't edit files in those directories because of stupid "rules". Instead, go into `~/.bash_profile` and add (this one is an example for the conda environment `sql_env`)
```
export ODBCINI=/Users/pcosta/miniconda3/envs/sql_env/etc/odbc.ini
export ODBCSYSINI=/Users/pcosta/miniconda3/envs/sql_env/etc
```
Refresh with `source ~/.bash_profile` and run `odbcinst -j` to see if shit changed.

Locate your `libtdsodbc.so` file. Mine was in `/Users/pcosta/miniconda3/envs/sql_env/lib/libtdsodbc.so`

Edit `odbcinst.ini` to include
```
[FreeTDS]
Description=FreeTDS Driver for Linux & MSSQL
Driver=/Users/pcosta/miniconda3/envs/sql_env/lib/libtdsodbc.so
Setup=/Users/pcosta/miniconda3/envs/sql_env/lib/libtdsodbc.so
UsageCount=1
```
Edit `odbc.ini` to include
```
[MYMSSQL]
Description         = Test to SQLServer
Driver              = FreeTDS
Servername          = MYMSSQL
```
Note, the `Driver` is the name of the entry in `odbcinst.ini`, and the `Servername` is the name of the entry in `freetds.conf` (not a network name).

Test your connection with `isql MYMSSQL FRD\\pcosta mypassword`. (Remember to escape special characters with `\`). Hopefully you'll get this
```
+---------------------------------------+
| Connected!                            |
|                                       |
| sql-statement                         |
| help [tablename]                      |
| quit                                  |
|                                       |
+---------------------------------------+
```
Try some sql queries
```
SELECT TOP 10 * FROM quantdb.dev.household
```
Type `quit` to exit!

If God exists, you'll now be ready to use pydobc
```
import pyodbc
conn = pyodbc.connect('DSN=MYMSSQL;UID=FRD\\pcosta;PWD=mypassword')
crsr = conn.cursor()
rows = crsr.execute("SELECT @@VERSION").fetchall()
print(rows)
crsr.close()
conn.close()
```

Congrats! That was terrible, wasn't it!?

## Running SQL queries using VS Code

If we want a dedicated editor, we can download [VS Code](https://code.visualstudio.com/) and install the [SQL Server extension](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql). We can now add a connection though the new connections icon on the activity bar on the left, or simply by modifying VS Code's `settings.json`.

You can either add a specific database or an entire server. This is the settings required to add both the database and server we worked with in this example.

```json
{
  "mssql.connections": [
    {
      "server": "ZC1Q2PSQLGE1V.corp.companyname.com",
      "database": "quantdb",
      "authenticationType": "Integrated",
      "profileName": "QuantDB",
      "password": ""
    },
    {
      "server": "ZC1Q2PSQLGE1V.corp.compnayname.com",
      "database": "",
      "authenticationType": "Integrated",
      "profileName": "2016",
      "password": ""
    }
  ]
}
```
