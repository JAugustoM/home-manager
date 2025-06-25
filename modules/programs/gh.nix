{ config, lib, pkgs, ...}:
{
  programs.gh = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.gh;
  };
}
