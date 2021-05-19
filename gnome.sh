#!/bin/bash

# 显卡驱动
pacman -S --noconfirm mesa vulkan-intel intel-media-driver

# 蓝牙驱动
pacman -S --noconfirm bluez bluez-utils

# Gnome
pacman -S --noconfirm gdm gnome-shell gnome-control-center xdg-user-dirs-gtk xdg-desktop-portal-gtk
pacman -S --noconfirm gnome-tweaks gnome-shell-extensions chrome-gnome-shell
pacman -S --noconfirm gnome-calculator gnome-system-monitor gnome-terminal gnome-weather
pacman -S --noconfirm nautilus p7zip unrar gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb sushi
pacman -S --noconfirm eog webp-pixbuf-loader

# 字体
pacman -S --noconfirm ttf-sarasa-gothic adobe-source-han-serif-otc-fonts

# 输入法
pacman -S --noconfirm ibus ibus-rime ibus-anthy

# 启动所需服务
systemctl enable gdm
systemctl enable bluetooth
