{ config, lib, pkgs, ... }:
{
  stylix = {
    enable = true;

    targets = {
      neovim.enable = false;
      kde.enable = false;
      firefox.enable = false;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    image = ../include/media/City.jpg;
    fonts = import ./stylix/fonts.nix pkgs;
  };
}
