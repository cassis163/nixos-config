{
  config,
  pkgs,
  ...
}:
{
  # TODO: Configure your system-wide user settings (groups, etc), add more users as needed.
  users.users = {
    # FIXME: Replace with your username
    caspera = {
      # TODO: You can set an initial password for your user.
      # If you do, you can skip setting a root password by passing '--no-root-passwd' to nixos-install.
      # Be sure to change it (using passwd) after rebooting!
      hashedPassword = "$y$j9T$8w6neZcY5Xw3K6iTIxQJr/$i7fv0qBQ9gW7VLiEEsiDUCVIfiJB/OBSYmj2vZ8GFE/";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      # TODO: Be sure to add any other groups you need (such as networkmanager, audio, docker, etc)
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };
    caspera-fv = {
      # TODO: You can set an initial password for your user.
      # If you do, you can skip setting a root password by passing '--no-root-passwd' to nixos-install.
      # Be sure to change it (using passwd) after rebooting!
      hashedPassword = "$y$j9T$1lscAYZwICTSSGZQRarO5.$WDgKrZQ/RXKvqhOKnBvTmz3dKDIXdAXStMB9pJny.W1";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      # TODO: Be sure to add any other groups you need (such as networkmanager, audio, docker, etc)
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };
  };
}
