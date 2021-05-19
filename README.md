# archinstall

## Connect to network

```
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID
quit
```

## Install git and clone this repo

`pacman -S git`
`git clone https://github.com/qvshuo/archinstall.git`

## Install base system

`./install.sh`

## Chroot to new system

`arch-chroot /mnt`

## Config something

`./config.sh`

## Reboot

`exit`

`reboot`

## Connect to network again

`systemctl enable --now NetworkManager`

`nmtui`

## Install Gnome desktop environment

`./gnome.sh`

## Install software

`su`

`./software.sh`

## Install software from AUR

`su huizhi`

`./software_aur.sh`
