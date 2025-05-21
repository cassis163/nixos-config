{
  config,
  pkgs,
  inputs,
  ...
}: {
  services.displayManager.ly = {
    enable = true;
  };

  # Enable Hyprland Cachix (see https://wiki.hyprland.org/Nix/Cachix/)
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  # See https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/
  programs.hyprland = {
    enable = true;
    # Set the flake package
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # Make sure to also set the portal package, so that they are in sync
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;

    # For compatibility with native X11 applications to run them seamlessly
    # , Xwayland can be used, which provides an X Server in Wayland.
    # See https://wiki.archlinux.org/title/Wayland
    xwayland.enable = true;

    # TODO: Turn this on at some point. This does not work with ly for some reason.
    # .. it keeps botting compositor process twice and then crashes...
    # Universal Wayland Session Manager (see https://wiki.hyprland.org/Useful-Utilities/Systemd-start/)
    # withUWSM = true;
  };

  # For Electron and Chromium based apps to use Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    # Multi-media
    pipewire
    # Notification daemon
    mako
    # QtWayland support
    kdePackages.qtwayland
    # App launcher
    wofi
    # Clipboard
    wl-clipboard
    # Status bar
    waybar
    # Terminal
    ghostty
    # File manager
    kdePackages.dolphin
    # Webbrowser
    ungoogled-chromium
  ];
}
