{ config, lib, pkgs, ...}:
{
  programs.fastfetch = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.fastfetch;
  };
}
