{ config, lib, pkgs, ... }:
{
  programs.oh-my-posh = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.oh-my-posh;
    useTheme = "night-owl";
  };
}
