#!/bin/bash
entries="⇠ Logout\n⏻ Shutdown\n⏾ Reboot"
#selected=$(echo -e $entries|wofi -c ~/.config/wofi/config_powermenu --dmenu | awk '{print tolower($2)}')
selected=$(echo -e $entries|fzf| awk '{print tolower($2)}')
case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec sudo reboot;;
  shutdown)
    exec sudo shutdown -h now;;
esac
