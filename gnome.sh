#!/bin/bash

# 显卡驱动
pacman -S --noconfirm mesa vulkan-intel libva-intel-driver

# 蓝牙支持
pacman -S --noconfirm bluez bluez-utils

# Gnome
pacman -S --noconfirm gdm gnome-shell gnome-control-center gnome-terminal nautilus xdg-user-dirs-gtk xdg-desktop-portal-gtk
pacman -S --noconfirm gnome-calculator gnome-system-monitor gnome-weather
pacman -S --noconfirm gnome-tweaks gnome-shell-extensions chrome-gnome-shell
pacman -S --noconfirm eog webp-pixbuf-loader
pacman -S --noconfirm p7zip unrar gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb sushi tracker tracker-miners tracker3 tracker3-miners

# 字体
pacman -S --noconfirm ttf-sarasa-gothic adobe-source-han-serif-otc-fonts

# 输入法
pacman -S --noconfirm ibus ibus-rime ibus-anthy

# 启动相关服务
systemctl enable gdm
systemctl enable bluetooth
