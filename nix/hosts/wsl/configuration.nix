# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, lib, pkgs, ... }:

{
  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
    ../../shared/cli.nix
  ];

  wsl.enable = true;
  wsl.defaultUser = "charlie";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "23.11";

  users.defaultUserShell = pkgs.zsh;
  users.users = {
    nixos.isNormalUser = true;
    nixos.group = "users";
    nixos.shell = pkgs.zsh;
  };

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "kubectl"
        "helm"
        "docker"
        "golang"
        "node"
        "npm"
      ];
    };
  };

  programs.neovim = {
    enable = true;
    # package = pkgs.vimPlugins.LazyVim; ???
  }
}
