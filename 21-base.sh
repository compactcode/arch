# Set locale
CreateLink /etc/localtime /usr/share/zoneinfo/Australia/Melbourne
CopyFile /etc/locale.gen
CopyFile /etc/locale.conf

# Set hostname
CopyFile /etc/hostname

# Custom domains
CopyFile /etc/hosts

# Enable pacman respositories
CopyFile /etc/pacman.conf

# Enable wired networking
CopyFile /etc/systemd/network/20-wired.network
