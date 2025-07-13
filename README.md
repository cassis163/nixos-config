# cassis163's NixOS config

<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/6dad70d5-8654-4a5f-b7d1-cb838fc9bec8" />

.

<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/b44919d7-4b49-43c5-9274-fa14f4c6782e" />

## Desktop
* Niri WM
* Plasma DE (as backup, will remove later)

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
* Start maintaining `librepods` for NixOS to unlock the full power of AirPods
* Maybe get into disko to declaratively set up file system
* Change color theme to something modern and slick (kinda Vercel-like)
* Remove Plasma, keeps some apps and change greeter app from SDDM to something lighter
