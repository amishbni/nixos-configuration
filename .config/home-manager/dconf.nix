{config, pkgs, ...}:

{
  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri = "file:///home/ami/.config/wallpapers/rick.png";
      picture-uri-dark = "file:///home/ami/.config/wallpapers/rick.png";
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}

