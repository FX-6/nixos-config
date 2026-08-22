{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";
      user.name = "FX-6";
      user.email = "felixschwinger@web.de";
    };
  };
}
