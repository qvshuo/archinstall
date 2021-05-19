#!/bin/bash

## 源
echo "Server = https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist
echo "Server = https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch " >> /etc/pacman.d/mirrorlist
echo "Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist

## Archlinuxcn
echo "[archlinuxcn]" >> /etc/pacman.conf
echo "Server = https://mirrors.xjtu.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
pacman -Syy --noconfirm archlinuxcn-keyring

# 常用软件
pacman -S --noconfirm paru
pacman -S --noconfirm firefox firefox-i18n-zh-cn
pacman -S --noconfirm clash
pacman -S --noconfirm telegram-desktop
pacman -S --noconfirm you-get vdhcoapp
pacman -S --noconfirm syncthing rsync
pacman -S --noconfirm deadbeef celluloid gimp obs-studio flowblade
pacman -S --noconfirm drawio-desktop-bin typora hugo
pacman -S --noconfirm git code
pacman -S --noconfirm android-tools scrcpy
pacman -S --noconfirm neofetch
pacman -S --noconfirm materia-gtk-theme gtk-engine-murrine
