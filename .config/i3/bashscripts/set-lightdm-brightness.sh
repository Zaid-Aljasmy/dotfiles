#!/bin/bash
echo 1500 | sudo tee /sys/class/backlight/intel_backlight/brightness


# add this to /etc/lightdm/lightdm.conf in the [seat:*] : 

#display-setup-script=/home/zaid/.config/i3/bashscripts/set-brightness.sh

