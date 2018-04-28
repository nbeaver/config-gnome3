#! /usr/bin/env bash

# Use 12-hour time (AM / PM) instead of 24-hour time.
gsettings set org.gnome.desktop.interface clock-format 12h

# Turn off cursor blinking.
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')/ cursor-blink-mode off
# https://geoff.greer.fm/2016/08/26/gnome-terminal-cursor-blinking-saga/
