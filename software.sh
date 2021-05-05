#!/bin/bash

# 修改镜像列表
sudo echo "Server = https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist
sudo echo "Server = https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
sudo echo "Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist

# Archlinuxcn源 
sudo echo "[archlinuxcn]" >> /etc/pacman.conf
sudo echo "Server = https://mirrors.xjtu.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
sudo pacman -Syy --noconfirm
sudo pacman -S --noconfirm archlinuxcn-keyring

# 常用软件
sudo pacman -S --noconfirm paru
sudo pacman -S --noconfirm firefox firefox-i18n-zh-cn
sudo pacman -S --noconfirm clash
sudo pacman -S --noconfirm telegram-desktop
sudo pacman -S --noconfirm netease-cloud-music-gtk
sudo pacman -S --noconfirm you-get vdhcoapp
sudo pacman -S --noconfirm syncthing rsync
sudo pacman -S --noconfirm deadbeef celluloid gimp obs-studio flowblade
sudo pacman -S --noconfirm drawio-desktop-bin typora hugo
sudo pacman -S --noconfirm git code
sudo pacman -S --noconfirm android-tools scrcpy
sudo pacman -S --noconfirm neofetch
sudo pacman -S --noconfirm materia-gtk-theme gtk-engine-murrine

# 常用软件（AUR）
paru -S wechat-nativefier bubblemail yesplaymusic-appimage wps-office wps-office-mui-zh-cn wps-office-mime ttf-wps-fonts xxd-standalone boston-icon-theme
