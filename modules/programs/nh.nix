{ config, lib, pkgs, ...}:
{
  programs.nh = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.nh;
    clean = {
      enable = true;
      dates = "weekly";
      extraArgs = "--keep 3";
    };
  };
}
