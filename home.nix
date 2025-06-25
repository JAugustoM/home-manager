{ config, lib, pkgs, ... }:
{
  home.username = "jaugusto";
  home.homeDirectory = "/home/jaugusto";
  home.stateVersion = "25.05"; 

  nixGL.packages = import <nixgl> { inherit pkgs; };
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = [ "mesa" ];

  imports = [
    ./modules/configuration.nix
    ./modules/desktopEntries.nix
    ./modules/programs.nix
  ];

  home.packages = [
    (config.lib.nixGL.wrap pkgs.aria2)
    (config.lib.nixGL.wrap pkgs.bun)
    (config.lib.nixGL.wrap pkgs.dualsensectl)
    (config.lib.nixGL.wrap pkgs.imagemagick)
    (config.lib.nixGL.wrap pkgs.kew)
    (config.lib.nixGL.wrap pkgs.poppler)
    (config.lib.nixGL.wrap pkgs.nodejs)
    (config.lib.nixGL.wrap pkgs.resvg)
    (config.lib.nixGL.wrap pkgs.tldr)
    (config.lib.nixGL.wrap pkgs.uv)
  ];
  home.file = {};
  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
