{
  config,
  pkgs,
  inputs,
  ...
}:
{
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

  # Fix bug where suspend does not work
  systemd.sleep.extraConfig = ''
    SuspendState=freeze
  '';

  environment.systemPackages = with pkgs; [
    # Essential components
    just # Make NixOS commands less cumbersome
    alacritty # Terminal
    fuzzel # App launcher
    waybar # Status bar
    swaylock # Lockscreen
    mako # Notifications
    libnotify # Notifications debugging
    swaybg # Wallpaper utility
    xwayland-satellite
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    wdisplays
    wl-clipboard
    wlsunset
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
