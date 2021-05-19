#!/bin/bash

# 源
echo "Server = https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist
echo "Server = https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch " >> /etc/pacman.d/mirrorlist
echo "Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist

# Archlinuxcn
echo "[archlinuxcn]" >> /etc/pacman.conf
echo "Server = https://mirrors.xjtu.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
pacman -Syy --noconfirm archlinuxcn-keyring

# Cli software
pacman -S --noconfirm paru
pacman -S --noconfirm clash
pacman -S --noconfirm you-get vdhcoapp
pacman -S --noconfirm syncthing rsync
pacman -S --noconfirm hugo
pacman -S --noconfirm git
pacman -S --noconfirm android-tools scrcpy
pacman -S --noconfirm neofetch
