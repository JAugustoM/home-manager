{ config, lib, pkgs, ...}:
{
  programs.bat = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.bat;
  };
}
