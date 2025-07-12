{
  config,
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = [ pkgs.chromium ];
}
