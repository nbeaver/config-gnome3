#! /usr/bin/env bash

# Use 12-hour time (AM / PM) instead of 24-hour time.
gsettings set org.gnome.desktop.interface clock-format 12h

# Show the date on the clock.
gsettings set org.gnome.desktop.interface clock-show-date true

# Turn off cursor blinking.
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')/ cursor-blink-mode off
# https://geoff.greer.fm/2016/08/26/gnome-terminal-cursor-blinking-saga/

gsettings set org.gnome.desktop.sound event-sounds false
# https://help.ubuntu.com/stable/ubuntu-help/sound-alert.html
# https://askubuntu.com/questions/25531/how-to-disable-alert-volume-from-the-command-line#178480

gsettings set org.gnome.desktop.interface enable-animations false
# https://askubuntu.com/questions/99874/how-do-i-turn-off-gnome-shell-activities-animations#348670

gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab', '<Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
# https://superuser.com/questions/394376/how-to-prevent-gnome-shells-alttab-from-grouping-windows-from-similar-apps

gsettings set org.gnome.nautilus.preferences executable-text-activation ask
# https://askubuntu.com/questions/286621/how-do-i-run-executable-scripts-in-nautilus

# Disable external search providers
# such as tracker, Calendar, Calculator, Characters, Boxes, Photos, Recipes, etc.
# This way, queries look for applications only
# and finish in a reasonable amount of time.
gsettings set org.gnome.desktop.search-providers disable-external true
# /usr/share/gnome-shell/search-providers
# https://developer.gnome.org/SearchProvider/

# Disable auto-opening of folders on drag-and-drop.
gsettings set org.gnome.nautilus.preferences open-folder-on-dnd-hover false
# https://bugzilla.gnome.org/show_bug.cgi?id=727790
# https://bugzilla.gnome.org/show_bug.cgi?id=754455
# http://askubuntu.com/questions/825834/how-can-i-disable-the-auto-opening-of-a-folder-when-using-drag-drop-in-nautilu

# Let Evince use more RAM so it can zoom in more.
gsettings set org.gnome.Evince page-cache-size 512
# https://fransdejonge.com/2017/10/fix-minuscule-zoom-limit-in-evince/

# Don't advance the slideshow in Eye of Gnome.
gsettings set org.gnome.eog.fullscreen seconds 0
# https://askubuntu.com/questions/197379/eog-how-to-control-delay-between-slides-in-a-slideshow-from-command-line

# Turn of tracker-miner-fs.
gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2
gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false
# https://askubuntu.com/questions/346211/tracker-store-and-tracker-miner-fs-eating-up-my-cpu-on-every-startup
