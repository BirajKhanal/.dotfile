#! /bin/sh

bspc rule -r "*"

# to kill the application for every reload so only one instance is loaded
killall polybar bar1
killall polybar bar2
killall sxhkd
killall dunst
killall picom
killall flameshot
killall redshift

#----Autostart commands----#

# application to started after login
sxhkd &
polybar bar1 &
polybar bar2 &
nm-applet &
xmodmap ~/.Xmodmap
picom --config ~/.config/picom/picom.conf &
flameshot &
dunst &
udiskie &
redshift &
xsetroot -xcf ~/.icons/oreo_white_cursors/cursors/default 1
