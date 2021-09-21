# yay
IgnorePackage --foreign yay-bin

# ld
IgnorePath '/etc/ld.so.cache'

# info
IgnorePath '/usr/share/info/dir'

# systemd-boot
IgnorePath '/boot/EFI/BOOT/BOOTX64.EFI'
IgnorePath '/boot/EFI/systemd/systemd-bootx64.efi'
IgnorePath '/boot/initramfs*.img'
IgnorePath '/boot/loader/random-seed'
IgnorePath '/boot/vmlinuz-linux'
IgnorePath '/etc/mkinitcpio.d/linux.preset'
IgnorePath '/var/lib/plymouth/boot-duration'

# user
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/group-'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/gshadow*'
IgnorePath '/var/db/sudo/lectured/*'

# udev
IgnorePath '/etc/udev/hwdb.bin'
IgnorePath '/usr/lib/udev/hwdb.bin'

# systemd
IgnorePath '/var/lib/systemd/catalog/database'
IgnorePath '/var/lib/systemd/random-seed'

# systemd-update-done.service
IgnorePath '/etc/.updated'
IgnorePath '/var/.updated'

# systemd logs
IgnorePath '/var/log/*'

# pacman
IgnorePath '/etc/pacman.d/gnupg'
IgnorePath '/var/lib/pacman/local/*'
IgnorePath '/var/lib/pacman/sync/*'

# certificates
IgnorePath '/etc/ca-certificates/extracted'
IgnorePath '/etc/ssl/certs'

# gtk
IgnorePath '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache'
IgnorePath '/usr/lib/gtk-3.0/3.0.0/immodules.cache'

# gnome
IgnorePath '/usr/lib/gio/modules/giomodule.cache'

# mime
IgnorePath '/usr/share/mime/*.xml' # Localizations
IgnorePath '/usr/share/mime/XMLnamespaces'
IgnorePath '/usr/share/mime/aliases' # MIME aliases
IgnorePath '/usr/share/mime/generic-icons'
IgnorePath '/usr/share/mime/globs' # File extensions
IgnorePath '/usr/share/mime/globs2' # Weighted file extensions?
IgnorePath '/usr/share/mime/icons'
IgnorePath '/usr/share/mime/magic' # Binary magic database
IgnorePath '/usr/share/mime/mime.cache' # Binary
IgnorePath '/usr/share/mime/subclasses'
IgnorePath '/usr/share/mime/treemagic' # Directory magic
IgnorePath '/usr/share/mime/types'
IgnorePath '/usr/share/mime/version'

# icons
IgnorePath '/usr/share/icons/*/icon-theme.cache'

# kernel
IgnorePath '/usr/lib/modules/*-arch*'

# misc
IgnorePath '/etc/xml/catalog'
