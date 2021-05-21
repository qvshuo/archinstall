#!/bin/bash

# 开启时间同步
timedatectl set-ntp true

# 格式化根分区
mkfs.btrfs -f -L 'archlinux' /dev/nvme0n1p2
# 挂载根分区
mount /dev/nvme0n1p2 /mnt
# 创建子卷
btrfs subvolume create /mnt/@
# 卸载根分区
umount /mnt
# 重新挂载根分区
mount -t btrfs -o compress=zstd,subvol=@ /dev/nvme0n1p2 /mnt

# 格式化ESP分区
mkfs.vfat /dev/nvme0n1p1
# 挂载ESP分区
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

# 格式化资料分区
# mkfs.ext4 -F /dev/nvme0n1p3
# 挂载资料分区
mkdir /mnt/home
mount /dev/nvme0n1p3 /mnt/home

# 安装系统基础软件包
pacstrap /mnt base base-devel linux linux-firmware dosfstools btrfs-progs ntfs-3g intel-ucode efibootmgr fish networkmanager neovim man-db man-pages texinfo git

# 生成fstab
genfstab -U /mnt >> /mnt/etc/fstab
