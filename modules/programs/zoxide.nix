{ config, lib, pkgs, ... }:
{
  programs.zoxide = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.zoxide;
  };
}
