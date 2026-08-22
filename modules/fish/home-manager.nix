{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      cat = "bat";
      cd = "z";
      cls = "clear";
      ls = "eza";
      nixos-rebuild = "sudo nixos-rebuild switch --flake ~/.config/nixos#";
    };
    interactiveShellInit = ''
      set -g fish_color_command cyan
      set -g fish_color_param normal
      set -g fish_color_quote green
      set -g fish_color_valid_path normal
      set -g fish_user_paths \x1d
    '';
  };
}
