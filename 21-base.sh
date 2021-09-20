# set time
CopyFile /etc/adjtime

# set locale
CreateLink /etc/localtime /usr/share/zoneinfo/Australia/Melbourne
CopyFile /etc/locale.gen
CopyFile /etc/locale.conf

# dns
CopyFile /etc/hostname
CopyFile /etc/hosts

# pacman
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/mirrorlist

# ssh
AddPackage openssh

# smart card
AddPackage ccid

# enable systemd-networkd
CreateLink /etc/systemd/system/dbus-org.freedesktop.network1.service /usr/lib/systemd/system/systemd-networkd.service
CreateLink /etc/systemd/system/multi-user.target.wants/systemd-networkd.service /usr/lib/systemd/system/systemd-networkd.service
CreateLink /etc/systemd/system/network-online.target.wants/systemd-networkd-wait-online.service /usr/lib/systemd/system/systemd-networkd-wait-online.service
CreateLink /etc/systemd/system/sockets.target.wants/systemd-networkd.socket /usr/lib/systemd/system/systemd-networkd.socket

# enable systemd-resolved
CreateLink /etc/systemd/system/dbus-org.freedesktop.resolve1.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/multi-user.target.wants/systemd-resolved.service /usr/lib/systemd/system/systemd-resolved.service

# enable wired networking
CopyFile /etc/systemd/network/20-wired.network
