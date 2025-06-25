{ config, lib, pkgs, ...}:
{
  programs.neovim = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.neovim-unwrapped;
    defaultEditor = true;
  };
}
