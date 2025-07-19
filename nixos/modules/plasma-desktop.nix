{
  config,
  pkgs,
  inputs,
  ...
}:
{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  environment.variables = {
    KWIN_DRM_PREFER_COLOR_DEPTH = "24";
  };

  # Fix invisible cursor and theming
  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    # Essential components
    just # Make NixOS commands less cumbersome
    alacritty # Terminal
    wl-clipboard
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  hardware.graphics = {
    enable = true;

    # if you also want 32-bit support (e.g for Steam)
    enable32Bit = true;
  };
}
