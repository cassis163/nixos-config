### Setup
1. Clone this repo and put it in `/mnt/etc/nixos/nixos-config`
2. Generate a `hardware-configuration.nix` file
3. Remove default generated `configuration.nix` file
4. Move the generated `hardware-configuration.nix` file to `nixos-config/nixos`
5. Rebuild with `sudo nixos-rebuild switch --flake /etc/nixos/nixos-config#<HOSTNAME>`
