{ config, lib, pkgs, ... }:
{
  programs.fzf = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.fzf;
  };
}
