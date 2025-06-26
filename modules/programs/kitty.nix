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

  xdg.desktopEntries.kitty = {
    name = "Kitty";
    genericName = "Terminal Emulator";
    comment = "Fast, feature-rich, GPU based terminal";
    icon = "${pkgs.kitty}/share/icons/hicolor/256x256/apps/kitty.png";
    exec = "kitty";
    startupNotify = true;
    categories = [ "System" "TerminalEmulator" ];
    settings = {
      X-TerminalArgExec = "--";
      X-TerminalArgTitle = "--title";
      X-TerminalArgAppId = "--class";
      X-TerminalArgDir = "--working-directory";
      X-TerminalArgHold = "--hold";
    };
  };
}
