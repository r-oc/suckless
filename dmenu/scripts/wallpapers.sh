#!/bin/bash

function wallpaper {
  selected=$(ls /home/ryan/Pictures/Wallpapers/ | dmenu -i -g 10 -l 5)

  echo $selected
  # feh --bg-scale /home/ryan/Pictures/Wallpapers/$selected

}

wallpaper
