"""How to query Snowflake given that it lives in https://companyname.snowflakecomputing.com/."""
import snowflake.connector
import os


ctx = snowflake.connector.connect(
    provider="snowflake",
    user=os.environ["SNOWFLAKEUSERNAME"],
    password=os.environ["SNOWFLAKEPASSWORD"],
    database="database_name",
    account='companyname',
)
cs = ctx.cursor()
try:
    cs.execute("SELECT current_version()")
    one_row = cs.fetchone()
    print(one_row[0])
finally:
    cs.close()
ctx.close()
