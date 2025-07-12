{
  xdg,
  pkgs,
  ...
}:
{
  xdg.configFile."alacritty/alacritty.toml".source = ./alacritty.toml;
  xdg.configFile."alacritty/dracula.toml".source = ./dracula.toml;
}
