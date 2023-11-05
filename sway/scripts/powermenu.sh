#!/bin/bash
entries="⇠ Logout\n⏻ Shutdown\n⭮ Reboot\n⏾ Suspend"
selected=$(echo -e $entries|wofi -c ~/.config/wofi/config_powermenu --dmenu | awk '{print tolower($2)}')
case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
