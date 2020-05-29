# JupyterLab

Install [miniconda](https://docs.conda.io/en/latest/miniconda.html) and run.

```shell
conda install -c conda-forge nodejs
conda install -c conda-forge jupyterlab
```

_Extensions and configs for Jupyter lab_

[Good reference at Awesome Jupyter](https://github.com/mauhai/awesome-jupyterlab)

## Command Palette

- Enable Extension Manager

## Extensions

_`jupyter labextension update` to update extensions_

- [collapsible_headings](https://github.com/aquirdTurtle/Collapsible_Headings)

  ```sh
  jupyter labextension install @aquirdturtle/collapsible_headings
  pip install jupyterlab_github
  ```

- [jupyterlab-jupytext](https://github.com/mwouts/jupyterlab-jupytext)

  ```sh
  conda install -c conda-forge jupytext
  ```

- [@jupyterlab/git](https://github.com/jupyterlab/jupyterlab-git)

  - Might need to do extension manager install as well as

  ```sh
  conda install -c conda-forge jupyterlab-git
  ```

- [@jupyterlab/github](https://github.com/jupyterlab/jupyterlab-github)

  A bit involved, see [installation instructions](jupyter labextension install @jupyterlab/github)

  ```sh
  jupyter labextension install @jupyterlab/github
  ```

  Add `c.GitHubConfig.access_token = "my-GitHub-token"` to `~/.jupyter/jupyter_notebook_config.py`.

- [@jupyerlab/toc](https://github.com/jupyterlab/jupyterlab-toc)

  ```sh
  jupyter labextension install @jupyterlab/toc
  ```

- [jupyerlab_code_formatter](https://github.com/ryantam626/jupyterlab_code_formatter)

  ```sh
  conda install -c conda-forge black isort
  jupyter labextension install @ryantam626/jupyterlab_code_formatter
  conda install -c conda-forge jupyterlab_code_formatter
  jupyter serverextension enable --py jupyterlab_code_formatter
  ```

- [Plotly](https://plot.ly/python/getting-started/)

  ```sh
  conda install ipywidgets
  jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
  jupyter labextension install jupyterlab-plotly --no-build
  jupyter labextension install plotlywidget --no-build
  jupyter lab build
  ```

- [jupyterlab_go_to_definition](https://github.com/krassowski/jupyterlab-go-to-definition)

  ```sh
  jupyter labextension install @krassowski/jupyterlab_go_to_definition
  ```

- [jupyterlab_spellchecker](https://github.com/ijmbarr/jupyterlab_spellchecker)

  ```sh
  jupyter labextension install @ijmbarr/jupyterlab_spellchecker
  ```

- ~~[jupyterlab_variableinspector](https://github.com/lckr/jupyterlab-variableInspector)~~

  ⚠️ **Has major bug that prevents the variable name `tf` from being set. See [#145](https://github.com/lckr/jupyterlab-variableInspector/issues/145)**

  ```sh
  jupyter labextension install @lckr/jupyterlab_variableinspector
  ```

- [jupyterlab flake8](https://github.com/mlshapiro/jupyterlab-flake8)

  ```sh
  jupyter labextension install jupyterlab-flake8
  ```

- [jupyterlab-widgets](https://ipywidgets.readthedocs.io/en/latest/user_install.html)

  Need to run `conda isntall -c conda-forge ipywidgets` in virtual environment

  ```sh
  conda install -c conda-forge widgetsnbextension
  jupyter labextension install @jupyter-widgets/jupyterlab-manager
  ```

- [jupyterlab debugger](https://github.com/jupyterlab/debugger)

  ```sh
  conda install -c conda-forge xeus-python ptvsd
  jupyter labextension intsall @jupyterlab/debugger
  ```

- [jupyterlab-lsp](https://github.com/krassowski/jupyterlab-lsp#installation)

  ```sh
  pip install jupyter-lsp
  jupyter labextension install @krassowski/jupyterlab-lsp
  conda install -c conda-forge python-language-server
  ```

- [jupyterlab-google-drive](https://github.com/jupyterlab/jupyterlab-google-drive)

  ```sh
  jupyter labextension install @jupyterlab/google-drive
  ```

- [Jupyter Book](https://pypi.org/project/jupyter-book/)

  ```sh
  pip install jupyter-book
  ```

## Settings

_Settings -> Advanced Settings Editor_

- Notebook

  ```json
  {
    "codeCellConfig": {
      "rulers": [79, 72]
    }
  }
  ```

- Jupyterlab Code Formatter

  ```json
  {
    "isort": {
      "multi_line_output": 3,
      "include_trailing_comma": true,
      "force_grid_wrap": 0,
      "use_parentheses": true,
      "line_length": 88
    }
  }
  ```

- Keyboard Shortcuts

  ```json
  {
    "shortcuts": [
      {
        "command": "jupyterlab_code_formatter:black",
        "keys": ["Shift Alt F"],
        "selector": ".jp-Notebook.jp-mod-editMode"
      },
      {
        "command": "jupyterlab_code_formatter:isort",
        "keys": ["Shift Alt O"],
        "selector": ".jp-Notebook.jp-mod-editMode"
      },
      {
        "command": "notebook:move-cell-up",
        "keys": ["Alt ArrowUp"],
        "selector": ".jp-Notebook:focus"
      },
      {
        "command": "notebook:move-cell-down",
        "keys": ["Alt ArrowDown"],
        "selector": ".jp-Notebook:focus"
      }
    ]
  }
  ```

- Go-to-definition

  ```json
  {
    "modifier": "Meta"
  }
  ```

- Jupyterlab-Flake8

  ```json
  {
    // Jupyterlab-Flake8
    // jupyterlab-flake8:plugins
    // Linter settings
    // *************************

    // [missing schema title]
    // Persistent internal terminal name. This is set automatically on each run
    "conda_env": "notebook",
    "terminal_name": "1"
  }
  ```

## Theme

- [Atom dark](https://github.com/BurglarBenson/Jupyter-Atom-Dark-Theme)
- Settings -> Text Editor Theme -> material

## Kernels

### Conda environment integration

In notebook environment

```bash
conda install nb_conda_kernels
```

In conda environment

```bash
conda install ipykernel
```

### Virtual environment integration

In venv/virtualenv

```zsh
pip install ipykernel
python -m ipykernel install --user --name=mykernelname
```

### Remove kernels

```zsh
jupyter kernelspec uninstall unwanted-kernel
```

## Debugging

```python
from IPython.core.debugger import set_trace
set_trace()
```

or `%debug` after exception occurs.

## Alert boxes

Create colored boxes by using some HTML.

```html
<div class="alert alert-block alert-info">
  <b>Techniques of note</b>
  <br /><br />
  <li>
    <code>MultiIndex.level</code> for grabbing specific indexes from a
    MultiIndex
  </li>
  <li>
    <code>Index.difference</code> for finding indexes that exist in one set but
    not the other
  </li>
  <li><code>^</code> for symmetric differences</li>
</div>
```

The above results in a blue box. Can also use `class="alert alert-block alert-warning"` for yellow box, `class="alert alert-block alert-success"` for green, or `class="alert alert-block alert-danger"` for red.
