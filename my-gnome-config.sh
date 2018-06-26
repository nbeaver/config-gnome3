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

gsettings set org.gnome.desktop.search-providers disable-external true
