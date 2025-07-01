# dotfiles

all the stuff I want for setting stuff up

## flox
[Install](https://flox.dev/docs/install-flox/)

[My Default](https://hub.flox.dev/charliettaylor/default)
```bash
flox pull charliettaylor/default
```

## nvim

```
# Linux
ln -s ~/dotfiles/nvim ~/.config/nvim
# Powershell
Move-Item ./nvim/ ~/AppData/Local/nvim/
```

requires: git, make, unzip, gcc, ripgrep

```
# Windows
choco install ripgrep

# Linux
sudo apt-get install ripgrep

# Links
https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
```
