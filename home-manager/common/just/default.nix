{ config, pkgs, ... }:

{
  home.file."Justfile".source = ./Justfile;
  
  home.packages = [
    pkgs.just
  ];
}
