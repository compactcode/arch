# ld
IgnorePath '/etc/ld.so.cache'

# systemd-boot
IgnorePath '/boot/initramfs*.img'
IgnorePath '/boot/vmlinuz-linux'
IgnorePath '/boot/loader/random-seed'

# systemd-update-done.service
IgnorePath '/etc/.updated'
IgnorePath '/var/.updated'

# systemd logs
IgnorePath '/var/log/*'

# pacman
IgnorePath '/var/lib/pacman/local/*'
