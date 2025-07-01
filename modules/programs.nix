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

  imports = [
    ./programs/bash.nix
    ./programs/bat.nix
    ./programs/beets.nix
    ./programs/direnv.nix
    ./programs/distrobox.nix
    ./programs/fastfetch.nix
    ./programs/fd.nix
    ./programs/fish.nix
    ./programs/fzf.nix
    ./programs/gh.nix
    ./programs/jq.nix
    ./programs/kitty.nix
    ./programs/lazygit.nix
    ./programs/neovim.nix
    ./programs/nh.nix
    ./programs/obsidian.nix
    ./programs/omp.nix
    ./programs/ripgrep.nix
    ./programs/yazi.nix
    ./programs/yt-dlp.nix
    ./programs/zellij.nix
    ./programs/zoxide.nix
  ];
}
