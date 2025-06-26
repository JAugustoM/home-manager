{ config, lib, pkgs, ...}:
{
  programs.bash = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.bash;
  };
}
