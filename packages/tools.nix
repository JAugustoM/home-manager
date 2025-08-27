{
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    aria2
    dualsensectl
    gdu
    imagemagick
    img2pdf
    (config.lib.nixGL.wrap obsidian)
    ocrmypdf
    (config.lib.nixGL.wrap pika-backup)
    poppler
    resvg
    tealdeer
    unrar
    wl-clipboard
  ];
}
