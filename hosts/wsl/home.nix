{ pkgs, ... }:

{
  imports = [
    ../../modules/bat/home-manager.nix
    ../../modules/eza/home-manager.nix
    ../../modules/fish/home-manager.nix
    ../../modules/git/home-manager.nix
    ../../modules/lazydocker/home-manager.nix
    ../../modules/lazygit/home-manager.nix
    ../../modules/lazysql/home-manager.nix
    ../../modules/mise/home-manager.nix
    ../../modules/msedit/home-manager.nix
    ../../modules/starship/home-manager.nix
    ../../modules/fd/home-manager.nix
    ../../modules/gh/home-manager.nix
    ../../modules/glow/home-manager.nix
    ../../modules/ripgrep/home-manager.nix
    ../../modules/zoxide/home-manager.nix
  ];

  home.username = "zefx6";
  home.homeDirectory = "/home/zefx6";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
