#!/bin/sh



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
# && sudo snap install dotnet-sdk --classic \
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
&& sudo snap install mailspring \
&& sudo snap install gnome-extension-manager \
&& sudo snap install keep-presence \
&& sudo snap install obs-studio \
&& sudo snap install steam \
&& sudo snap install arduino \
&& sudo snap install dotnet-sdk --channel=8.0/beta --classic \


# flatpack install
&& flatpak install flathub -y io.podman_desktop.PodmanDesktop \
&& flatpak install flathub -y net.cozic.joplin_desktop \
&& flatpak install flathub -y com.slack.Slack \
&& flatpak install flathub -y com.bitwarden.desktop \
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
# && flatpak install flathub -y com.anydesk.Anydesk \
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
&& flatpak install flathub -y org.upscayl.Upscayl \
&& flatpak install flathub -y com.github.jeromerobert.pdfarranger \
&& flatpak install flathub -y org.mozilla.Thunderbird \
&& flatpak install flathub -y io.gitlab.adhami3310.Impression \
&& flatpak install flathub -y com.boxy_svg.BoxySVG \
&& flatpak install flathub -y com.lakoliu.Furtherance \






&& /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
&& curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
&& source ~/.bashrc \
&& nvm install lts/* \
&& source ~/.bashrc \
&& curl -fsSL https://get.pnpm.io/install.sh | sh - \
&& source ~/.bashrc \
&& brew install derailed/k9s/k9s \




&& brew install gh \
&& sudo apt -y install unzip zip \
&& curl -s "https://get.sdkman.io" | bash \
&& source ~/.sdkman/bin/sdkman-init.sh
# https://www.graalvm.org/downloads/
&& sdk install java 20.0.1-graal \



