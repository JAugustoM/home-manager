{ config, lib, pkgs, ...}:
{
  programs.direnv = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.direnv;
    nix-direnv.enable = true;
    silent = true;
  };
}
