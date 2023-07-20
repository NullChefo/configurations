#!/bin/sh

sudo dnf update \
&& sudo dnf install curl \
&& sudo dnf install snapd \
&& sudo ln -s /var/lib/snapd/snap /snap \
&& sudo snap install snap-store \
&& sudo snap install steam \

# Framework specific
&& sudo grubby --update-kernel=ALL --args="module_blacklist=hid_sensor_hub" \
&& gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" \
&& gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true \
&& sudo grubby --update-kernel=ALL --args="nvme.noacpi=1" \


# General
&& gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close' \
&& sudo dnf install openssl \
&& flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo \
&& sudo snap install gnome-extension-manager \
&& sudo snap install keep-presence \
&& sudo snap install brave \
&& sudo snap install obs-studio \
&& sudo snap install steam \
&& sudo snap install arduino \
&& sudo snap install android-studio --classic \
&& sudo snap install code --classic \
&& sudo snap install dotnet-sdk --channel=8.0/beta --classic \

&& flatpak install flathub -y net.cozic.joplin_desktop \
&& flatpak install flathub -y com.slack.Slack \
&& flatpak install flathub -y com.bitwarden.desktop \
&& flatpak install flathub -y com.getmailspring.Mailspring \
&& flatpak install flathub -y com.google.Chrome \
# && flatpak install flathub -y com.obsproject.Studio \
&& flatpak install flathub -y com.spotify.Client \
&& flatpak install flathub -y org.videolan.VLC \
&& flatpak install flathub -y org.gnome.Cheese \
&& flatpak install flathub -y com.getpostman.Postman \
&& flatpak install flathub -y com.github.tchx84.Flatseal \
&& flatpak install flathub -y com.discordapp.Discord \
# && flatpak install flathub -y com.valvesoftware.Steam \
&& flatpak install flathub -y com.usebottles.bottles \
# && flatpak install flathub -y com.anydesk.Anydesk \
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
# && flatpak install flathub -y cc.arduino.arduinoide \
&& flatpak install flathub -y dev.k8slens.OpenLens \

#KVM 
&& sudo dnf group install --with-optional virtualization \
&& sudo systemctl enable libvirtd \

&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
&& curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
&& source ~/.bashrc \
&& nvm install lts/* \
&& source ~/.bashrc \
&& curl -fsSL https://get.pnpm.io/install.sh | sh - \
&& source ~/.bashrc 
