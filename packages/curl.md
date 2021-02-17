# curl

## Poetry

```sh
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
```

## Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Oh My Zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## iTerm2 integration

```sh
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
```

# Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Micro

```sh
curl https://getmic.ro | bash
```

## Delta

```sh
wget https://github.com/dandavison/delta/releases/download/0.4.1/delta-0.4.1-x86_64-unknown-linux-musl.tar.gz
tar -xvzf delta-0.3.0-x86_64-unknown-linux-musl.tar.gz
mv delta ~/.local/bin
```

## Starship

```sh
curl -fsSL https://starship.rs/install.sh | bash
```

## mdcat

```sh
wget https://github.com/lunaryorn/mdcat/releases/download/mdcat-0.21.0/mdcat-0.21.0-x86_64-unknown-linux-musl.tar.gztar.gz
tar -xvf mdcat-0.21.0-x86_64-unknown-linux-musl.tar.gz
mv mdcat ~/.local/bin
```
