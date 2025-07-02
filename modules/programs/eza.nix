{ config, lib, pkgs, ...}:
{
  programs.eza = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.eza;
    git = true;
    icons = "always";
  };
}
