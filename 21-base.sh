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

# vpn
AddPackage openvpn

# nfs
AddPackage nfs-utils
CreateDir /var/lib/rpcbind 700 rpc rpc

# config manager
AddPackage --foreign aconfmgr-git

# gpg
CreateLink /etc/systemd/user/sockets.target.wants/dirmngr.socket /usr/lib/systemd/user/dirmngr.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket /usr/lib/systemd/user/gpg-agent-browser.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket /usr/lib/systemd/user/gpg-agent-extra.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket /usr/lib/systemd/user/gpg-agent-ssh.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent.socket /usr/lib/systemd/user/gpg-agent.socket

# gpg smart card
AddPackage ccid

# systemd
CreateDir /var/lib/systemd/coredump
CreateDir /var/lib/systemd/linger
CreateDir /var/lib/systemd/pstore
CreateDir /var/lib/machines 700
CreateDir /var/lib/portables 700
CreateDir /var/lib/private 700
CreateFile /var/lib/systemd/timers/stamp-shadow.timer > /dev/null
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

# enable systemd-timesyncd
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateFile /var/lib/systemd/timesync/clock '' systemd-timesync systemd-timesync > /dev/null
SetFileProperty /var/lib/systemd/timesync group systemd-timesync
SetFileProperty /var/lib/systemd/timesync owner systemd-timesync

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
