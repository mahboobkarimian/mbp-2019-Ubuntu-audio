#!/bin/bash
echo "### Copy service file ..."
chmod +x poll_mic.sh
chmod +x volume_notify.sh
cp -v ./mbpmic-poll.service $HOME/.config/systemd/user/;
systemctl --user daemon-reload;
systemctl --user enable mbpmic-poll.service;
systemctl --user start mbpmic-poll.service;
