#!/bin/bash
index=`pacmd list-sources | grep builtin-mic -B 2 | grep index | cut -d ":" -f 2 | tr -d " "`
pacmd set-source-volume $index 0x40000
