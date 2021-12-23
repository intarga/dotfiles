#! /bin/sh

# Scale UI
xrandr --output eDP-1 --scale 0.8x0.8

# refresh wallpaper and colourscheme
feh --bg-fill "${HOME}/dotfiles/wallpapers/once_in_a_lifetime.jpg" &
wal -R &

# background processes
killall dunst ; dunst &
killall redshift ; redshift -l 59.9:10.7 -t 5700:2700 -g 0.8 -m randr -r &
killall slstatus ; slstatus &

# applications
# firefox &
# signal-desktop &
#slack &
