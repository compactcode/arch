# utilities
AddPackage bat # cat replacement
AddPackage exa # ls replacement
AddPackage fd # find replacement
AddPackage fzf # fuzzy finder
AddPackage git # version control
AddPackage ripgrep # grep replacement

# shells
AddPackage zsh
AddPackage --foreign zinit-git # zsh plugin manager
AddPackage starship # zsh prompt
CopyFile /etc/shells

# editor
AddPackage neovim # text editor
AddPackage --foreign nvim-packer-git # neovim package manager
