# Python

## Get Python working with C-libraries properly

When installing Python via pyenv,
to get it working propertly with some C libraries—
like Theno and PyMC3—
install with `PYTHON_CONFIGURE_OPTS='--enable-shared'`.
Example:

```sh
% env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.9.5
```
