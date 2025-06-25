{ config, lib, pkgs, ...}:
{
  programs.zellij = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.zellij;
  };
}
