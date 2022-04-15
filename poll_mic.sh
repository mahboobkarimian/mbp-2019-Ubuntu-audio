#!/bin/bash
index=`pacmd list-sources | grep builtin-mic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
pactl subscribe | grep --line-buffered "source #$index" | xargs -n1 ~/mbp-2019-Ubuntu-audio/volume_notify.sh
