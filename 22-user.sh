# account management
CopyFile /etc/group
CopyFile /etc/passwd
CopyFile /etc/sudoers
SetFileProperty /usr/bin/newgidmap mode 755
SetFileProperty /usr/bin/newuidmap mode 755

# available shells
CopyFile /etc/shells

# dotfile manager
AddPackage --foreign yadm-git

# login
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service

# autologin
CopyFile /etc/systemd/system/getty@tty1.service.d/override.conf
