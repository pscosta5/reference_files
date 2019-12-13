# Jupyter Lab

_Extensions and configs for Jupyter lab_

[Good reference at Awesome Jupyter](https://github.com/mauhai/awesome-jupyterlab)

## Command Palette

- Enable Extension Manager

## Extensions

_`jupyter labextension update` to update extensions_

- [collapsible_headings](https://github.com/aquirdTurtle/Collapsible_Headings)
  ```bash
  jupyter labextension install @aquirdturtle/collapsible_headings
  ```
- [jupyterlab-jupytext](https://github.com/mwouts/jupyterlab-jupytext)

  ```bash
  conda install -c conda-forge jupytext
  ```

- [@jupyterlab/git](https://github.com/jupyterlab/jupyterlab-git)
  - Might need to do extension manager install as well as
    ```bash
    jupyter labextension install @jupyterlab/git
    pip install jupyterlab-git
    jupyter serverextension enable --py jupyterlab_git
    ```
- [@jupyterlab/github](https://github.com/jupyterlab/jupyterlab-github)

  ```bash
  jupyter labextension install @jupyterlab/github
  ```

- [@jupyerlab/toc](https://github.com/jupyterlab/jupyterlab-toc)
  ```bash
  jupyter labextension install @jupyterlab/toc
  ```
- [jupyerlab_code_formatter](https://github.com/ryantam626/jupyterlab_code_formatter)
  ```bash
  jupyter labextension install @ryantam626/jupyterlab_code_formatter
  pip install jupyterlab_code_formatter
  jupyter serverextension enable --py jupyterlab_code_formatter
  ```
  also
  ```bash
  pip install black
  pip install isort
  ```
- [Plotly](https://plot.ly/python/getting-started/)
  ```bash
  conda install ipywidgets
  jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
  jupyter labextension install jupyterlab-plotly@1.3.0 --no-build
  jupyter labextension install plotlywidget@1.3.0 --no-build
  jupyter lab build
  ```
- [jupyterlab_go_to_definition](https://github.com/krassowski/jupyterlab-go-to-definition)

  ```bash
  jupyter labextension install @krassowski/jupyterlab_go_to_definition
  ```

- [jupyterlab_spellchecker](https://github.com/ijmbarr/jupyterlab_spellchecker)

  ```bash
  jupyter labextension install @ijmbarr/jupyterlab_spellchecker
  ```

- [jupyterlab_variableinspector](https://github.com/lckr/jupyterlab-variableInspector)

  ```bash
  jupyter labextension install @lckr/jupyterlab_variableinspector
  ```
  
- [jupyterlab flake8](https://github.com/mlshapiro/jupyterlab-flake8)
  _Untested—but looks cool!_
  ```bash
  jupyter labextension install jupyterlab-flake8
  ```

- [jupyterlab-lsp](https://github.com/krassowski/jupyterlab-lsp#installation)
  _This does not work with JupyterLab 1.2, wait for update_
  ```bash
  pip install --pre jupyter-lsp
  jupyter labextension install @krassowski/jupyterlab-lsp
  conda install -c conda-forge python-language-server
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
        "keys": ["Shift Alt I"],
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

## Theme

- [Atom dark](https://github.com/BurglarBenson/Jupyter-Atom-Dark-Theme)
- Settings -> Text Editor Theme -> material

## Conda environment integration

In notebook environment

```bash
conda install nb_conda_kernels
```

In conda environment

```bash
conda install ipykernel
```
