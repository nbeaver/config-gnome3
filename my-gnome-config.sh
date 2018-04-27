#! /usr/bin/env bash

gsettings set org.gnome.desktop.interface clock-format 12h

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')/ cursor-blink-mode off
# https://geoff.greer.fm/2016/08/26/gnome-terminal-cursor-blinking-saga/
