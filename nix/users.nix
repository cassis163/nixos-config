{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.caspera = {
    isNormalUser = true;
    description = "caspera";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
