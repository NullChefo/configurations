#!/bin/sh

sudo dnf update \
&& sudo dnf install curl \
&& sudo dnf install snapd \
&& sudo ln -s /var/lib/snapd/snap /snap \
&& sudo snap install snap-store \
&& sudo snap install steam \
&& sudo grubby --update-kernel=ALL --args="module_blacklist=hid_sensor_hub" \
&& gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" \
&& gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true \
&& sudo grubby --update-kernel=ALL --args="nvme.noacpi=1" \
&& gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close' \
&& sudo dnf install openssl \
&& flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo \
&& flatpak install flathub org.gnome.Extensions \
&& flatpak install flathub net.cozic.joplin_desktop \
&& flatpak install flathub com.slack.Slack \
&& flatpak install flathub com.bitwarden.desktop \
&& flatpak install flathub com.brave.Browser \
&& flatpak install flathub com.getmailspring.Mailspring \
&& flatpak install flathub com.google.Chrome \
&& flatpak install flathub com.discordapp.Discord \
&& flatpak install flathub org.onlyoffice.desktopeditors \
&& flatpak install flathub com.obsproject.Studio \
&& flatpak install flathub com.spotify.Client \
&& flatpak install flathub org.videolan.VLC \
&& flatpak install flathub org.gnome.Cheese \
&& flatpak install flathub com.getpostman.Postman \
&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
&& curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
&& source ~/.bashrc \
&& nvm install lts/* \
&& source ~/.bashrc \
&& curl -fsSL https://get.pnpm.io/install.sh | sh - \
&& source ~/.bashrc 
