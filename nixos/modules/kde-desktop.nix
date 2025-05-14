{
  config,
  pkgs,
  inputs,
  ...
}: {
  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    # plasma-browser-integration
    # konsole
    # oxygen
  ];

  services.displayManager.defaultSession = "plasma";

  environment.systemPackages = with pkgs; [
    kdePackages.krohnkite
  ];

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = false;
}
