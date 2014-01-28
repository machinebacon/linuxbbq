#!/bin/bash
xrdb -merge ~/.Xresources &
setxkbmap -option terminate:ctrl_alt_bksp

# sets your keyboard to 'us' keymap
setxkbmap us &

ulimit -c unlimited &

xbindkeys &

# set a wallpaper with feh, hsetroot or xsetroot
#xsetroot -solid "#003e4a"
xsetroot -cursor_name left_ptr &

#sleep 2s && hsetroot -fill /usr/share/wallpapers/fishy.jpg &

#this makes dual heads work
#vgascript &

# got time?
#sleep 2s && osd_clock -c white -s 1 -r -t -o -12 &

# execute session:
# if you have consolekit and dbus running:
#exec ck-launch-session dbus-launch --exit-with-session cwm
# else something like:

exec dbus-launch --exit-with-session cwm
