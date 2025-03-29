{ config, lib, pkgs, ... }:

let
  # Check for NVIDIA GPU using a more reliable method
  hasNvidia = lib.any (x: lib.hasPrefix "nvidia" x)
    (lib.optional (builtins.pathExists "/proc/driver/nvidia")
      (builtins.readDir "/proc/driver/nvidia"));

  # Check for AMD GPU by looking for vendor ID in a specific path
  hasAmd = lib.any (x: lib.hasPrefix "0x1002" x)
    (lib.optional (builtins.pathExists "/sys/class/drm/card0/device/vendor")
      (builtins.readFile "/sys/class/drm/card0/device/vendor"));
in {
  # Common configuration
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      mesa
    ] ++ lib.optionals hasAmd [
      rocmPackages.clr.icd
    ];
  };

  # GPU-specific configurations
  services.xserver.videoDrivers = if hasNvidia then ["nvidia"]
                                 else if hasAmd then ["amdgpu"]
                                 else ["modesetting"];

  # NVIDIA-specific configuration
  hardware.nvidia = lib.mkIf hasNvidia {
    modesetting.enable = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # AMD-specific configuration
  boot.initrd.kernelModules = lib.mkIf hasAmd [ "amdgpu" ];

  environment.sessionVariables = {
    # If your cursor becomes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
  };
}
