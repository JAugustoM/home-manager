{ config, lib, pkgs, ... }:
{
  programs.fd = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.fd;
  };
}
