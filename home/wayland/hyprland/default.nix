{ pkgs, ... }:
{
  imports =
  [
    ./config.nix
    ./env.nix
    ./rules.nix
    ./binds.nix
  ];

  home.packages = with pkgs; [
    libnotify
    brightnessctl
    swww
    hyprkeys
    hyprshot

    helvum
    easyeffects
    overskride
    imv

    wl-clipboard
    cliphist
    hyprpicker
  ];
}
