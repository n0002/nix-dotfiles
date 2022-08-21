{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "n";
  home.homeDirectory = "/home/n";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

 services.picom.enable = true;
 
 programs.gpg = {
   enable = true;
};
 
 services.gpg-agent = {
   enable = true;
};

 home.packages = with pkgs; [
 git
 git-crypt
 nitrogen
 htop
 neofetch
 gallery-dl 
 sxiv 
 betterdiscordctl 
 pavucontrol
 mpv
 keepassxc
 openssl
 st
 dmenu
 gnumake
 gnupg
 pinentry 
];


}
