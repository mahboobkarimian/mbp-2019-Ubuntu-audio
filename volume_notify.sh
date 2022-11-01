#!/bin/bash
if $(grep -w -q AppleT2 /proc/asound/cards);
then
	index=`pacmd list-sources | grep builtin-mic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
else
	index=`pacmd list-sources | grep BuiltinMic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
fi
pacmd set-source-volume $index 0x40000
