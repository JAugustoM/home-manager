{ config, lib, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.kitty;
    settings = {
      shell = "fish";
      editor = "nvim";
    };
  };
}
