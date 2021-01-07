#!/bin/bash

### kunde_x ### 07.12.2020 ###

# Skript für dmenu zur Recherche und Ansicht der Lesezeichen in qutebrowser per Shortcut aus herbstluftwm
# Vorgehen: 
## Variable "auswahl" definieren
## cat liest Datei mit Lesezeichen
## dmenu starten mit individuellen Struktur- und Farbschema, Schriftart und Überschrift
## Auswahl in Variable "auswahl" zu awk übergeben
## Zweite Spalte ist Argument für qutebrowser

auswahl=$(cat ~/.config/qutebrowser/quickmarks | dmenu -bw 2 -l 40 -g 2 -nb '#2f343f' -nf '#fff7bc' -sb '#83af9b' -nhf '#000000' -nhb '#ff5555' -shb '#0a81f5' -shf '#ffffff' -p 'lesezeichen:' -fn 'SauceCodePro Nerd Font:size=8')

qutebrowser $auswahl | awk '{print $2}'
