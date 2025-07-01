{ config, lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    (config.lib.nixGL.wrap aria2)
    (config.lib.nixGL.wrap bun)
    (config.lib.nixGL.wrap dualsensectl)
    (config.lib.nixGL.wrap imagemagick)
    (config.lib.nixGL.wrap kew)
    (config.lib.nixGL.wrap nodejs)
    (config.lib.nixGL.wrap poppler)
    (config.lib.nixGL.wrap resvg)
    (config.lib.nixGL.wrap scrcpy)
    (config.lib.nixGL.wrap tldr)
    (config.lib.nixGL.wrap uv)
    (config.lib.nixGL.wrap wl-clipboard)
    (config.lib.nixGL.wrap youtube-music)
  ];
}
