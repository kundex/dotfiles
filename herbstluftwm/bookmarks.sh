#!/bin/bash
# kunde_x
# 07.12.2020

# Skript to quick search and open bookmarks from qutebrowser
## Define variable "auswahl"
## Read bookmarks file via cat
## Start dmenu starten with custom style
## Pipe selection to awk
## Take second row as argument for qutebrowser

auswahl=$(cat ~/.config/qutebrowser/quickmarks | dmenu -bw 2 -l 40 -g 2 -nb '#2f343f' -nf '#fff7bc' -sb '#83af9b' -nhf '#000000' -nhb '#ff5555' -shb '#0a81f5' -shf '#ffffff' -p 'lesezeichen:' -fn 'SauceCodePro Nerd Font:size=8')

qutebrowser $auswahl | awk '{print $2}'
