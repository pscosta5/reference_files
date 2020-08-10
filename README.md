# dotfiles

My collection of dotfiles.

To install, run

```sh
❯ brew install stow git

❯ git clone https://github.com/pscosta5/dotfiles.git ~/.dotfiles

❯ stow -vR --dir ~/.dotfiles --target ~ git
```

Alternatively,
can use the function `sync_dot`

```sh
❯ sync_dot git
```
