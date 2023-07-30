#!/bin/sh

# Check     https://github.com/FrameworkComputer/linux-docs/blob/main/Ubuntu22.04LTS-Manual-Setup-13thGen.md

sudo apt-get update \
&& sudo apt-get upgrade \
&& sudo apt install flatpak \
&& sudo apt install gnome-software-plugin-flatpak \
&& flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo \
# reboot
&& sudo apt -y install curl git neovim\
&& sudo apt-get -y install podman && \


# Fonts
&& sudo apt-get install fonts-powerline \


# Run common.sh


# kvm
&& sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils \

# monoDevelop
&& sudo apt install apt-transport-https dirmngr \
&& sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list \
&& sudo apt update \
&& sudo apt-get install monodevelop \





# Docker
&& sudo apt-get update \
&& sudo apt-get install ca-certificates curl gnupg \
&& sudo install -m 0755 -d /etc/apt/keyrings \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
&& sudo chmod a+r /etc/apt/keyrings/docker.gpg \
&& echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
&& sudo apt-get update \
&& sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
# kvm
&& modprobe kvm \
&& modprobe kvm_intel \
&& ls -al /dev/kvm \
&& sudo usermod -aG kvm $USER \
&& sudo usermod -a -G docker $USER \
&& reboot
# log out 

# https://docs.docker.com/desktop/install/ubuntu/


&& cd ~/Download \
&& wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.20.1-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64 \



# distrobox

&& curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh \
# && distrobox-create --name apt --image ubuntu:22.04 \
# && distrobox enter apt \
&& distrobox-create --name dnf --image quay.io/fedora/fedora:38 \
&& distrobox enter dnf \

