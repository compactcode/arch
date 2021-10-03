# aws
AddPackage aws-cli
AddPackage aws-vault
AddPackage kubectl
AddPackage k9s

# docker
AddPackage docker
AddPackage docker-compose
CreateDir /opt/containerd/bin 711
CreateDir /opt/containerd/lib 711
SetFileProperty /opt/containerd mode 711
CreateLink /etc/systemd/system/multi-user.target.wants/docker.service /usr/lib/systemd/system/docker.service

# nodejs
AddPackage --foreign nvm

# browser testing
AddPackage chromium

# ruby
AddPackage --foreign ruby-install
AddPackage --foreign chruby

# ruby gem dependencies
AddPackage libyaml
AddPackage postgresql-libs
