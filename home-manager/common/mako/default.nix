{ home, pkgs, xdg, ... }:

{
  xdg.configFile."mako/config".source = ./config;
}
