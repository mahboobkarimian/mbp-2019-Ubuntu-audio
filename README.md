## Installation:
Download as zip or clone this git repository, change directory to the one that contains the files, then just run:

`
bash install.sh
`

## Manual installation:
The files go to:
```
/usr/share/alsa/cards/AppleT2.conf
/usr/share/pulseaudio/alsa-mixer/profile-sets/apple-t2.conf
/usr/lib/udev/rules.d/91-pulseaudio-custom.rules
$HOME/.config/pulse/default.pa
$HOME/.config/pulse/daemon.conf
```
and then: `systemctl --user restart pulseaudio.service`
or restart.

## Source:
https://gist.github.com/kevineinarsson/8e5e92664f97508277fefef1b8015fba
