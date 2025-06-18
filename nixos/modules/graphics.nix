{
  pkgs,
  inputs,
  ...
}: {
  hardware.graphics = {
    enable = true;

    # if you also want 32-bit support (e.g for Steam)
    enable32Bit = true;
  };
}
