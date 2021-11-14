#!bin/bash
echo "#### Copying files ####"
sudo cp -v AppleT2.conf /usr/share/alsa/cards/AppleT2.conf
sudo cp -v apple-t2.conf /usr/share/pulseaudio/alsa-mixer/profile-sets/apple-t2.conf
sudo cp -v 91-pulseaudio-custom.rules /usr/lib/udev/rules.d/91-pulseaudio-custom.rules
cp -v default.pa $HOME/.config/pulse/default.pa
cp -v daemon.conf $HOME/.config/pulse/daemon.conf
echo "#### Restarting pulseaudio ####"
systemctl --user restart pulseaudio.service
echo "#### Increasing mic level by 400% ####"
index=`pacmd list-sources | grep builtin-mic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
pacmd set-source-volume $index 0x40000
pacmd list-sources | grep builtin-mic -A 10| grep volume
