{ config, lib, pkgs, ... }:
{
  programs.ripgrep = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.ripgrep;
  };
}
