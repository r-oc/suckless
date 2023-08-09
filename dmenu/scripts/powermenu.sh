#!/bin/bash

function powermenu {
  options="󰜺 Cancel\n Shutdown\n Reboot\n󰒲 Sleep\n Lock"
  selected=$(echo -e $options | dmenu -i)
  if [[ $selected = " Shutdown" ]]; then
    poweroff
  elif [[ $selected = " Reboot" ]]; then
    reboot
  elif [[ $selected = "󰒲 Sleep" ]]; then
    systemctl suspend
  elif [[ $selected = " Lock" ]]; then
    slock
  elif [[ $selected = "󰜺 Cancel" ]]; then
    return
  fi
}

powermenu
