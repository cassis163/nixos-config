{
  config,
  pkgs,
  inputs,
  ...
}: {
  ### Plasma DE

  services = {
    desktopManager.plasma6.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  # Fix invisible cursor and theming
  programs.dconf.enable = true;


  ### Niri WM

  programs.niri = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Essential components
    alacritty    # Terminal
    fuzzel       # App launcher
    waybar       # Status bar
    swaylock     # Lockscreen
    mako         # Notifications
    swaybg       # Wallpaper utility
    xwayland-satellite
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome

    wdisplays
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
