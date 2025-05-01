#!/bin/sh

# ZSH better

# # Oh my bash
# && bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" /
# # nano .bashrc
# # OSH_THEME="agnoster"



# && sudo snap install dotnet-sdk --channel=8.0/beta --classic \
# && sudo snap install gnome-extension-manager \
# && sudo snap install openjdk \

# OPTIONAL

# && sudo snap install brave \
# && sudo snap install intellij-idea-community --classic \
# && sudo snap install mailspring \









&& sudo snap install yt-dlp \
&& sudo snap install ffmpeg \
&& sudo snap install eclipse --classic \
&& sudo snap install code --classic \
&& sudo snap install go --classic \
&& sudo snap install gd-godot-engine-mono-snapcraft --edge \
&& sudo snap install flutter --classic \
&& sudo snap install android-studio --classic \
&& sudo snap install gradle --edge --classic \
&& sudo snap install brackets --classic \
&& sudo snap install keep-presence \
&& sudo snap install arduino \
&& sudo snap install dotnet-sdk --classic \
&& sudo snap install intellij-idea-ultimate --classic \
&& sudo snap install rider --classic \



# flatpak install flathub org.gnome.Boxes
# flatpak install flathub com.github.IsmaelMartinez.teams_for_linux
# && flatpak install flathub -y com.anydesk.Anydesk \
# && flatpak install flathub -y org.angryip.ipscan \
# && flatpak install flathub -y dev.k8slens.OpenLens \
# && flatpak install flathub -y com.github.jeromerobert.pdfarranger \

&& flatpak install flathub -y app.zen_browser.zen \
&& flatpak install flathub -y dev.zed.Zed \
&& flatpak install flathub -y com.valvesoftware.Steam \
&& flatpak install flathub -y com.mattjakeman.ExtensionManager \
&& flatpak install flathub -y com.brave.Browser \
&& flatpak install flathub -y com.usebottles.bottles \
&& flatpak install flathub -y org.videolan.VLC \
&& flatpak install flathub -y com.github.tchx84.Flatseal \
&& flatpak install flathub -y com.obsproject.Studio \
&& flatpak install flathub -y net.lutris.Lutris \
&& flatpak install flathub -y org.qbittorrent.qBittorrent \
&& flatpak install flathub -y md.obsidian.Obsidian \
&& flatpak install flathub -y org.libreoffice.LibreOffice \
&& flatpak install flathub -y com.bitwarden.desktop \
&& flatpak install flathub -y org.mozilla.Thunderbird \
&& flatpak install flathub -y io.missioncenter.MissionCenter \
&& flatpak install flathub -y org.inkscape.Inkscape \
&& flatpak install flathub -y com.vivaldi.Vivaldi \
&& flatpak install flathub -y io.github.flattool.Warehouse \
&& flatpak install flathub -y org.remmina.Remmina \
&& flatpak install flathub -y com.getpostman.Postman \
&& flatpak install flathub -y com.slack.Slack \
&& flatpak install flathub -y io.dbeaver.DBeaverCommunity \
&& flatpak install flathub -y org.gnome.World.PikaBackup \
&& flatpak install flathub -y net.cozic.joplin_desktop \
&& flatpak install flathub -y org.gnome.DejaDup \
&& flatpak install flathub -y com.jgraph.drawio.desktop \
&& flatpak install flathub -y io.github.dvlv.boxbuddyrs \

&& flatpak install flathub -y org.upscayl.Upscayl \
&& flatpak install flathub -y org.gnome.Firmware \
&& flatpak install flathub -y com.plexamp.Plexamp \
&& flatpak install flathub -y dev.bragefuglseth.Fretboard \
&& flatpak install flathub -y com.github.huluti.Curtail \
&& flatpak install flathub -y com.redis.RedisInsight \
&& flatpak install flathub -y com.authormore.penpotdesktop \
&& flatpak install flathub -y com.discordapp.Discord \
&& flatpak install flathub -y com.google.Chrome \
&& flatpak install flathub -y com.github.marhkb.Pods \
&& flatpak install flathub -y org.kde.krita \
&& flatpak install flathub -y org.freecad.FreeCAD \
&& flatpak install flathub -y com.rustdesk.RustDesk \


&& flatpak install flathub -y io.podman_desktop.PodmanDesktop \
&& flatpak install flathub -y com.spotify.Client \
&& flatpak install flathub -y org.gnome.Cheese \
&& flatpak install flathub -y com.opera.Opera \
&& flatpak install flathub -y org.x.Warpinator \
&& flatpak install flathub -y fr.handbrake.ghb \
&& flatpak install flathub -y org.flameshot.Flameshot \
&& flatpak install flathub -y com.transmissionbt.Transmission \
&& flatpak install flathub -y com.raggesilver.BlackBox \
&& flatpak install flathub -y org.wireshark.Wireshark \
&& flatpak install flathub -y org.upscayl.Upscayl \
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
&& curl -s "https://get.sdkman.io" | bash \
&& source ~/.sdkman/bin/sdkman-init.sh
# https://www.graalvm.org/downloads/
&& sdk install java 22.0.2-graalce \


# sdk install java 24-graalce






sudo dnf install -y \
    bind-utils \
    openssl

# file watcher
sudo dnf install -y inotify-tools



sudo dnf install -y golang



echo "Install rust"
if ! [ -x "$(command -v rustup)" ]; then
    echo "Install rust dependency: gcc"
    sudo dnf install -y gcc
    # install rust
    echo "Install rustup"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
fi




###
# python pip (needed for azure cli extensions)
###
sudo dnf install -y python3-pip



###
# install kubectl
###
if ! [ -x "$(command -v kubectl)" ]; then
    echo "Install kubectl"
    sudo dnf install -y kubectl
fi


###
# misc tooling
###
sudo dnf install -y \
    fzf \
    gh \
    git \
    git-lfs



# dotnet

dotnet tool update -g dotnet-ef

dotnet tool update -g dotnet-outdated-tool

dotnet tool update -g dotnet-reportgenerator-globaltool



