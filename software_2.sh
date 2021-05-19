#!/bin/bash

# Software frome AUR
paru -S nodejs-nativefier bubblemail yesplaymusic-appimage xxd-standalone boston-icon-theme

# Setup and config flatpak
paru -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub

# # GUI software frome flathub
flatpak install flathub org.mozilla.firefox
flatpak install flathub org.telegram.desktop
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub org.gimp.GIMP
flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.jliljebl.Flowblade
flatpak install flathub com.wps.Office
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub io.typora.Typora
flatpak install flathub com.visualstudio.code

flatpak install flathub org.gtk.Gtk3theme.Materia-dark
flatpak install flathub org.gtk.Gtk3theme.Materia-light