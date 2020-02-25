# Poetry + Artrepo

## Steps

1.  Initialize project and create `pyproject.toml`

    ```zsh
    poetry init --no-interaction
    ```

2.  Edit `pyproject.toml` to include:

    ```toml
    [[tool.poetry.source]]
    name = "artrepo"
    url = "https://artrepo.companyname.com/artifactory/api/pypi/drb-pypi-virtual/simple"
    default = true
    ```

3.  Add packages

    ```zsh
    CURL_CA_BUNDLE="" poetry add -D flake8
    ```

    **Note:** This is a complete hack to get around ssl verification based on
    https://stackoverflow.com/questions/48391750/disable-python-requests-ssl-validation-for-an-imported-module

4.  Manually build packages

    ```zsh
    CURL_CA_BUNDLE="" PIP_NO_BINARY="pyodbc" poetry add pyodbc
    ```

## Notes

Sometimes Poetry will inherit settings from `pip.conf`, sometimes it won't. Had some
issues in some cases where proxy in `pip.conf` would interfere with poetry installation.
