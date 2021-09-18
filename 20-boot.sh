# core packages
AddPackage base
AddPackageGroup base-devel

# kernel
AddPackage linux
AddPackage linux-firmware

# filysystem
AddPackage lvm2
CopyFile /etc/fstab

# systemd-boot
AddPackage efibootmgr
CopyFile /boot/loader/entries/arch.conf 755
CopyFile /boot/loader/loader.conf 755

# initramfs
AddPackage plymouth
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/plymouth/plymouthd.conf
