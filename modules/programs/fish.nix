{ config, lib, pkgs, ... }:
{
  programs.fish = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.fish;
    functions = import ../../include/fish/functions.nix;
    shellAbbrs = import ../../include/fish/shellAbbrs.nix;
    shellInit = builtins.readFile ../../include/fish/shellInit.fish;
  };
}
