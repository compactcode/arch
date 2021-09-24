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

# window manager
AddPackage i3-gaps
AddPackage i3status-rust

# compositor
AddPackage picom

# sound
AddPackage pipewire
AddPackage pipewire-pulse

# xdg
AddPackage xdg-desktop-portal
AddPackage xdg-user-dirs
AddPackage xdg-utils

# gtk
AddPackage gtk2

# theme
AddPackage arc-gtk-theme

# fonts
AddPackage adobe-source-code-pro-fonts
AddPackage noto-fonts
AddPackage --foreign nerd-fonts-source-code-pro

# applications
AddPackage alacritty
AddPackage discord
AddPackage firefox
AddPackage rofi
