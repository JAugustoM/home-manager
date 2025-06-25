{ config, lib, pkgs, ... }:
{
  xdg.configFile = {
    nvim = {
      enable = true;
      source = ../include/nvim;
      target = "nvim";
    };
  };
}
