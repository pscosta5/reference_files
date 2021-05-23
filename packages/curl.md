# curl

## [Poetry](https://python-poetry.org/docs/)

This needs to be updated to a later installation script when Poetry 1.2 releases.

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

## Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## [OCR](https://github.com/schappim/macOCR)

This is for the Intel, change for Apple Silicon.

```sh
curl -O https://files.littlebird.com.au/ocr-EPiReQzFJ5Xw9wElWMqbiBayYLVp.zip
unzip ocr-EPiReQzFJ5Xw9wElWMqbiBayYLVp.zip
sudo cp ocr /usr/local/bin
```
