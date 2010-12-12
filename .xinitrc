#!/bin/sh
# ~/.xinitrc
# Executed by startx (run your window manager from here)

## fix synaptics while typing
syndaemon -t -k -i 2 -d &
# -i 2 sets the idle time to 2 seconds. The idle time specifies how many
# seconds to wait after the last key-press before enabling the touchpad again.
# -t tells the daemon not to disable mouse movement when typing and only
# disable tapping and scrolling.
# -k tells the daemon to ignore modifier keys when monitoring keyboard activity
# (ie: allows ctrl+left click).
# -d starts as a daemon, in the background.

## Set the default cursor
xsetroot -cursor_name left_ptr

## Load background image
/usr/bin/xloadimage -onroot $HOME/.xmonad/xmonad-1024x800.png

## Launch the xmonad session
#exec ck-launch-session xmonad
exec xmonad

## Start XFCE panels and desktop
#xfce4-panel &
#xfdesktop &

## Start the WICD daemon -- GTK variety -- which ends in the xfce4-panel
#wicd-gtk &

## Start the quake-like terminal which is toggled via <F1>
#tilda &

## Launch XFCE proper
#exec ck-launch-session startxfce4
