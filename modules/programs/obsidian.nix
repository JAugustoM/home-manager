{ config, lib, pkgs, ...}:
{
  programs.obsidian = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.obsidian;
    vaults = {
      Jumpchain = {
        target = "Documents/Obsidian/Jumpchain";
      };
    };
  };
}
