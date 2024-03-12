{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    tree
    htop
    tmux
    neovim
    wget
    nodejs_21
    go
    gopls
    gotools
    python3
    python311Packages.pip
    zsh
    oh-my-zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    git
    gitui
  ];
}
