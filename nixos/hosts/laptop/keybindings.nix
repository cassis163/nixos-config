{
  config,
  pkgs,
  inputs,
  ...
}: {
  services.actkbd = {
    enable = true;
    bindings = [
      # Less backlight
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
      # More backlight
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
    ];
  };
}
