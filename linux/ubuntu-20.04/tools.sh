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
# Oh my bash
&& bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" /
# nano .bashrc
# OSH_THEME="agnoster"
&& sudo snap install yt-dlp \
&& sudo snap install ffmpeg \
&& sudo snap install eclipse --classic \
&& sudo snap install brave \
&& sudo snap install intellij-idea-community --classic \
# --channel=8.0/beta
&& sudo snap install dotnet-sdk --classic \
&& sudo snap install code --classic \
&& sudo snap install go --classic \
&& sudo snap install gd-godot-engine-mono-snapcraft --edge \
&& sudo snap install flutter --classic \
&& sudo sudo snap install android-studio --classic \
&& sudo snap install obs-studio \
# && sudo snap install arduino \
&& sudo snap install gradle --edge --classic \
&& sudo snap install brackets --classic \
&& sudo snap install openjdk \
# kvm
&& sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils \

# monoDevelop

&& sudo apt install apt-transport-https dirmngr \
&& sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list \
&& sudo apt update \
&& sudo apt-get install monodevelop \


# flatpack install
&& flatpak install flathub -y io.podman_desktop.PodmanDesktop \
&& flatpak install flathub -y org.gnome.Extensions \
&& flatpak install flathub -y net.cozic.joplin_desktop \
&& flatpak install flathub -y com.slack.Slack \
&& flatpak install flathub -y com.bitwarden.desktop \
&& flatpak install flathub -y com.brave.Browser \
&& flatpak install flathub -y com.getmailspring.Mailspring \
&& flatpak install flathub -y com.google.Chrome \
&& flatpak install flathub -y com.discordapp.Discord \
&& flatpak install flathub -y org.onlyoffice.desktopeditors \
# && flatpak install flathub -y com.obsproject.Studio \
&& flatpak install flathub -y com.spotify.Client \
&& flatpak install flathub -y org.videolan.VLC \
&& flatpak install flathub -y org.gnome.Cheese \
&& flatpak install flathub -y com.getpostman.Postman \
&& flatpak install flathub -y com.github.tchx84.Flatseal \
&& flatpak install flathub -y com.discordapp.Discord \
&& flatpak install flathub -y com.valvesoftware.Steam \
&& flatpak install flathub -y com.usebottles.bottles \
&& flatpak install flathub -y com.anydesk.Anydesk \
&& flatpak install flathub -y org.onlyoffice.desktopeditors \
&& flatpak install flathub -y org.signal.Signal \
&& flatpak install flathub -y com.opera.Opera \
&& flatpak install flathub -y org.x.Warpinator \
&& flatpak install flathub -y fr.handbrake.ghb \
&& flatpak install flathub -y org.blender.Blender \
&& flatpak install flathub -y org.kde.krita \
&& flatpak install flathub -y org.inkscape.Inkscape \
&& flatpak install flathub -y io.dbeaver.DBeaverCommunity \
&& flatpak install flathub -y org.flameshot.Flameshot \
&& flatpak install flathub -y com.transmissionbt.Transmission \
&& flatpak install flathub -y com.jgraph.drawio.desktop \
&& flatpak install flathub -y com.raggesilver.BlackBox \
&& flatpak install flathub -y rest.insomnia.Insomnia \
&& flatpak install flathub -y org.wireshark.Wireshark \
&& flatpak install flathub -y org.gnome.World.PikaBackup \
&& flatpak install flathub -y cc.arduino.arduinoide \
&& flatpak install flathub -y dev.k8slens.OpenLens \
&& flatpak install flathub org.upscayl.Upscayl \
&& flatpak install flathub com.github.jeromerobert.pdfarranger \
&& flatpak install flathub org.mozilla.Thunderbird \
&& flatpak install flathub io.gitlab.adhami3310.Impression \
&& flatpak install flathub com.boxy_svg.BoxySVG \
&& flatpak install flathub com.lakoliu.Furtherance \


# Other
&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
&& curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
&& source ~/.bashrc \
&& nvm install lts/* \
&& source ~/.bashrc \
&& curl -fsSL https://get.pnpm.io/install.sh | sh - \
&& source ~/.bashrc \

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
&& distrobox-create --name fedora-test --image fedora-38 \
&& distrobox enter fedora-test \
