#!/bin/bash

# 时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 调整时间偏移
hwclock --systohc

# 本地化
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen
echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# 主机名
echo "nuc" > /etc/hostname
# hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 nuc.localdomain nuc" >> /etc/hosts

# 安装引导程序
bootctl --path=/boot install
echo "timeout  0" > /boot/loader/loader.conf
echo "default  arch" >> /boot/loader/loader.conf
echo "title    Arch Linux" > /boot/loader/entries/arch.conf
echo "linux    /vmlinuz-linux" >> /boot/loader/entries/arch.conf
echo "initrd   /intel-ucode.img" >> /boot/loader/entries/arch.conf
echo "initrd   /initramfs-linux.img" >> /boot/loader/entries/arch.conf
echo "options  root=PARTUUID= rw rootflags=subvol=/" >> /boot/loader/entries/arch.conf
