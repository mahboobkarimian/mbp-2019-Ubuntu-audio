#!/bin/bash
if $(grep -w -q AppleT2 /proc/asound/cards);
then
	index=`pacmd list-sources | grep builtin-mic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
else
	index=`pacmd list-sources | grep BuiltinMic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
fi
pactl subscribe | grep --line-buffered "source #$index" | xargs -n1 ~/mbp-2019-Ubuntu-audio/volume_notify.sh
