{ pkgs, ... }:

{
  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;
  };
}
