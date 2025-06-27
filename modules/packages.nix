{ config, lib, pkgs, ... }:
{
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
    (config.lib.nixGL.wrap pkgs.wl-clipboard)
  ];
}
