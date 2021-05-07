# archinstall

## Network

```
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID
quit
```

## Install

`git clone https://github.com/qvshuo/archinstall.git'

`./install.sh`

## Chroot

`arch-chroot /mnt`

## Config

`./config.sh`

## Reboot

`exit`

`reboot`

## Network again

`systemctl enable --now NetworkManager`

`nmtui`

## Desktop Environment

`./gnome.sh`

## Reboot again

`reboot`

## Mirrorlist

`sudo nvim /etc/pacman.d/mirrorlist`

```
https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch
https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch 
https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch
```

## Archlinuxcn

`sudo nvim /etc/pacman.conf`

```
[archlinuxcn]
Server = https://mirrors.xjtu.edu.cn/archlinuxcn/$arch
```

`pacman -Syy --noconfirm`

`pacman -S --noconfirm archlinuxcn-keyring`

## Software

`su`

`./software.sh`

## Software_aur

`su huizhi`

`./software_aur.sh`
