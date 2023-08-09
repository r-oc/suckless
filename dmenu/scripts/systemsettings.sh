#!/bin/bash

function settings {
  options="Volume\nFile Manager\nWifi"
  selected=$(echo -e $options | dmenu -i)
  if [[ $selected = "Volume" ]]; then
    pavucontrol
  elif [[ $selected = "File Manager" ]]; then
    thunar
  elif [[ $selected = "Wifi" ]]; then
    nm-connection-editor
  fi
}

settings
