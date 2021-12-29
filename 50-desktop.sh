# amd
AddPackage mesa # OpenGL
AddPackage vulkan-radeon # Vulkan
AddPackage xf86-video-amdgpu # 2D acceleration
AddPackage libva-mesa-driver # VA-API
AddPackage mesa-vdpau # VDPAU

# xorg
AddPackage xorg-server
AddPackage xorg-xinit
AddPackage xorg-xdpyinfo
AddPackage xorg-xwininfo
AddPackage xclip

# xorg utilities
AddPackage maim # screenshots
AddPackage redshift # night light

# window manager
AddPackage i3-gaps
AddPackage i3status-rust

# compositor
AddPackage picom

# notifications
AddPackage dunst

# sound
AddPackage pipewire
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/pipewire-media-session.service
CreateLink /etc/systemd/user/pipewire.service.wants/pipewire-media-session.service /usr/lib/systemd/user/pipewire-media-session.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket

AddPackage pipewire-pulse
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket

# xdg
AddPackage xdg-desktop-portal
CreateDir /var/lib/geoclue '' geoclue geoclue

AddPackage xdg-user-dirs
CopyFile /etc/profile.d/xdg.sh
CreateLink /etc/systemd/user/default.target.wants/xdg-user-dirs-update.service /usr/lib/systemd/user/xdg-user-dirs-update.service

AddPackage xdg-utils

# gtk
AddPackage gtk2

# theme
AddPackage arc-gtk-theme

# fonts
AddPackage adobe-source-code-pro-fonts
AddPackage adobe-source-sans-fonts
AddPackage adobe-source-serif-fonts
AddPackage noto-fonts
AddPackage noto-fonts-emoji
AddPackage --foreign nerd-fonts-source-code-pro

# applications
AddPackage alacritty
AddPackage discord
AddPackage firefox
AddPackage mpv
AddPackage pinta
AddPackage rofi
AddPackage signal-desktop
AddPackage --foreign slack-desktop
AddPackage --foreign todoist-appimage
AddPackage --foreign 1password
AddPackage --foreign notable-bin
