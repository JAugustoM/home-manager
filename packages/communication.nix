{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    (config.lib.nixGL.wrap zapzap)
  ];
}
