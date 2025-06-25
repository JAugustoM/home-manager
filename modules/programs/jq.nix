{ config, lib, pkgs, ... }:
{
  programs.jq = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.jq;
  };
}
