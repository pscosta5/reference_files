# zsh

Set Homebrew zsh as default shell❯ 

```shell
❯ brew install zsh

❯ sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

❯ sudo chsh -s $(which zsh)
```

Confirm that you are running Homebrew zsh

```shell
❯ dscl . -read /Users/$USER UserShell
UserShell: /usr/local/bin/zsh
```
