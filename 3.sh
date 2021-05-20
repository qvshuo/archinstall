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

# 源
echo 'Server = https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
echo 'Server = https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch ' >> /etc/pacman.d/mirrorlist
echo 'Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist

# Archlinuxcn
echo '[archlinuxcn]' >> /etc/pacman.conf
echo 'Server = https://mirrors.xjtu.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf
pacman -Syy --noconfirm archlinuxcn-keyring

# AUR helper
pacman -S --noconfirm paru

# Software
pacman -S --noconfirm clash proxychains-ng
pacman -S --noconfirm firefox firefox-i18n-zh-cn
pacman -S --noconfirm telegram-desktop
pacman -S --noconfirm you-get vdhcoapp
pacman -S --noconfirm syncthing rsync
pacman -S --noconfirm deadbeef celluloid obs-studio gimp flowblade
pacman -S --noconfirm hugo drawio-desktop-bin typora
pacman -S --noconfirm git visual-studio-code-bin
pacman -S --noconfirm android-tools scrcpy
pacman -S --noconfirm materia-gtk-theme gtk-engine-murrine
pacman -S --noconfirm neofetch

# 重启
systemctl reboot
