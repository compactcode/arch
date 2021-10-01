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
CreateDir /boot/EFI/Linux
CopyFile /boot/loader/entries/arch.conf 755
CopyFile /boot/loader/loader.conf 755
CopyFile /etc/machine-id 444
CreateLink /var/lib/dbus/machine-id /etc/machine-id

# initramfs
AddPackage --foreign plymouth-git
AddPackage --foreign plymouth-theme-glowing-git
AddPackage ttf-dejavu
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/plymouth/plymouthd.conf
CopyFile /etc/arch-release
CreateLink /etc/os-release ../usr/lib/os-release
CreateFile /etc/vconsole.conf > /dev/null
