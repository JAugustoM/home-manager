{ config, lib, pkgs, ...}:
{
  programs.distrobox = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.distrobox;
  };
}
