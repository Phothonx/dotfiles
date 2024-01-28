{ pkgs, ... }:
{

  home.packages = with pkgs; [
    (pkgs.nerdfonts.override { fonts = [
    "Ubuntu"
    "UbuntuMono"
    "CascadiaCode"
    "FiraCode"
    "JetBrainsMono"
    ]; })
  ];

  home.sessionVariables = {
    XCURSOR_THEME = "bibata-cursors";
    XCURSOR_SIZE = 22;
  };

  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "bibata-cursors";
    size = 22;
    gtk.enable = true;
    };

  gtk = {
    enable = true;
    font  = { 
      name = "Ubuntu Nerd Font";
      size = 12;
    };

    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "bibata-cursors";
      size = 22;
    };

    theme = {
      package = pkgs.catppuccin-gtk.override {
        accents = [ "lavender" ];
        size = "compact";
        # tweaks = [ "rimless" ];
        variant = "mocha";
      };
      name = "Catppuccin-Mocha-Compact-Lavender-Dark";
    };

    iconTheme = {
      package = pkgs.morewaita-icon-theme;
      name = "morewaita-icon-theme";
    };

  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style.package = pkgs.catppuccin-qt5ct;
  };

}