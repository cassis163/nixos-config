{
  config,
  pkgs,
  stylix,
  ...
}: {
  stylix.enable = true;

  # stylix.image = ./wallpaper.png;

  stylix.targets.niri.enable = true;
  stylix.targets.waybar.enable = true;
  stylix.targets.waybar.font = "monospace";
}
