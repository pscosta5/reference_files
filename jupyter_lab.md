# Jupyter lab

_Extensions and configs for Jupyter lab_

[Good reference at Awesome Jupyter](https://github.com/mauhai/awesome-jupyterlab)

## Settings

- Enable Exension Manager

## Extensions

- [jupyterlab-jupytext](https://github.com/mwouts/jupyterlab-jupytext)
- [@jupyterlab/git](https://github.com/jupyterlab/jupyterlab-git)
- [@jupyterlab/github](https://github.com/jupyterlab/jupyterlab-github)
  - Might need to do extension manager install as well as
    ```bash
    jupyter labextension install @jupyterlab/git
    pip install jupyterlab-git
    jupyter serverextension enable --py jupyterlab_git
    ```
-

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
- Keyboard Shortcuts

## Theme

- [Atom dark](https://github.com/BurglarBenson/Jupyter-Atom-Dark-Theme)
- Settings -> Text Editor Theme -> material
