# user
#CopyFile /etc/group
#CopyFile /etc/passwd

# enable sudo for users
CopyFile /etc/sudoers

# dotfile manager for users
AddPackage --foreign yadm-git
