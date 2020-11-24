#!bin/bash
echo "#### Copying files ####"
sudo cp -v AppleT2.conf /usr/share/alsa/cards/AppleT2.conf
sudo cp -v apple-t2.conf /usr/share/pulseaudio/alsa-mixer/profile-sets/apple-t2.conf
sudo cp -v 91-pulseaudio-custom.rules /usr/lib/udev/rules.d/91-pulseaudio-custom.rules
sudo cp -v default.pa $HOME/.config/pulse/default.pa
sudo cp -v daemon.conf $HOME/.config/pulse/daemon.conf
echo "#### Restarting pulseaudio ####"
systemctl --user restart pulseaudio.service
