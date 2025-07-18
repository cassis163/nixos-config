{
  home,
  xdg,
  pkgs,
  ...
}:
{

  xdg.configFile."swaybg/wallpaper.png".source = ../../../wallpapers/wallpaper.png;

  home.packages = [ pkgs.swaybg ];

  systemd.user.services.swaybg = {
    Unit = {
      Description = "swaybg wallpaper";
      PartOf = [ "graphical-session.target" ];
      After = [ "graphical-session.target" ];
      Requisite = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i %h/.config/swaybg/wallpaper.png -m fill";
      Restart = "on-failure";
    };
  };
}
