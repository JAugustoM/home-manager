{ config, lib, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.kitty;
    font = {
      package = pkgs.nerd-fonts.iosevka;
      name = "Iosevka Nerd Font";
      size = 12;
    };
    settings = {
      shell = "fish";
      editor = "nvim";
    };
    themeFile = "Catppuccin-Mocha";
  };
}
