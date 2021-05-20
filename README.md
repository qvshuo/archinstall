# archinstall

## 1. Connect to network

```
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID
quit
```

## 2. Install git and clone this repo

`pacman -Sy git`

`git clone https://github.com/qvshuo/archinstall.git`

## 3. Install base system

`./1.sh`

## 4. Chroot to new system

`arch-chroot /mnt`

## 5. Config something

`./2.sh`

## 6. Reboot

`exit`

`systemctl reboot`

## 7. Connect to network again

`systemctl enable --now NetworkManager`

`nmtui`

## 8. Install Gnome desktop environment, config mirrorlist and install some software, then reboot again

`./3.sh`

## 9. Install software from AUR

`./4.sh`
