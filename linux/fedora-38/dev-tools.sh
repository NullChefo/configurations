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


# #xecute common.sh


#KVM 
&& sudo dnf group install --with-optional virtualization \
&& sudo systemctl enable libvirtd \
