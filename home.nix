{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}:
{
  imports = [
    ./conf/bash.nix
    ./conf/beets.nix
    ./conf/catppuccin.nix
    ./conf/direnv.nix
    ./conf/distrobox.nix
    ./conf/eza.nix
    ./conf/fish.nix
    ./conf/freetube.nix
    ./conf/git.nix
    ./conf/helix.nix
    ./conf/kitty.nix
    ./conf/lazygit.nix
    ./conf/nh.nix
    ./conf/nushell.nix
    ./conf/starship.nix
    ./conf/yazi.nix
    ./conf/yt-dlp.nix
    ./conf/zellij.nix
    ./packages/communication.nix
    ./packages/development.nix
    ./packages/media.nix
    ./packages/tools.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nixGL.packages = nixgl.packages;
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = [ "mesa" ];

  home = {
    username = "jaugusto";
    homeDirectory = "/home/jaugusto";

    sessionVariables = {
      LANGUAGE = "en_US";
      NH_HOME_FLAKE = "/home/jaugusto/.config/home-manager";
    };

    stateVersion = "25.05";
  };

  programs = {
    bat.enable = true;
    bottom.enable = true;
    carapace.enable = true;
    fastfetch.enable = true;
    fd.enable = true;
    fzf.enable = true;
    gh.enable = true;
    home-manager.enable = true;
    jq.enable = true;
    ripgrep.enable = true;
    zoxide.enable = true;
  };
}
