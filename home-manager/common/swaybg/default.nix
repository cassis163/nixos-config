{
  home,
  xdg,
  pkgs,
  ...
}:
{
  xdg.configFile."swaybg/wallpaper.jpg".source = ../../../wallpapers/wallpaper.jpg;

  home.packages = [ pkgs.swaybg ];

  systemd.user.services.swaybg = {
    Unit = {
      Description = "swaybg wallpaper";
      PartOf = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i %h/.config/swaybg/wallpaper.jpg -m fill";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };

}
