{ pkgs, ... }:

{
  imports = [
    ../../modules/fish/configuration.nix
    ../../modules/nix-ld/configuration.nix
  ];

  wsl = {
    enable = true;
    defaultUser = "zefx6";
    docker-desktop.enable = true;
  };

  users.users.zefx6 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.fish;
  };

  networking.hostName = "nixos-wsl";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.11";
}
