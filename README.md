# cassis163's NixOS config

## Desktop
* KDE Plasma
* **IMPORTANT: use `distrobox` to install everything that NixOS does not have**

## Prerequisites
* A devices that runs on UEFI (in order to support systemd)
* Add host files for new device

## Setup
1. Clone this repo and put it in `/mnt/etc/nixos/nixos-config`
2. Generate a `hardware-configuration.nix` file
3. Remove default generated `configuration.nix` file
4. Move the generated `hardware-configuration.nix` file to `nixos-config/nixos`
5. Rebuild with `sudo nixos-rebuild switch --flake /etc/nixos/nixos-config#<HOSTNAME>`
6. From then on, you can use `just switch <HOSTNAME>` and other commands inside `$HOME`

## TODO
* Maybe get into disko to declaratively set up file system
