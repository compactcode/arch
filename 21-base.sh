# set time
CopyFile /etc/adjtime

# set locale
CreateLink /etc/localtime /usr/share/zoneinfo/Australia/Melbourne
CopyFile /etc/locale.gen
CopyFile /etc/locale.conf

# set hostname
CopyFile /etc/hostname

# custom domains
CopyFile /etc/hosts

# enable pacman respositories
CopyFile /etc/pacman.conf

# enable wired networking
CopyFile /etc/systemd/network/20-wired.network
