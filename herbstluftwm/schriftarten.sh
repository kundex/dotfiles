#!/bin/bash

### kunde_x ### 07.12.2020 ###

# Skript für dmenu zur Recherche und Ansicht der installierten Fonts
# Vorgehen: 
## Variable "auswahl" definieren
## fc-list liest System-Fonts
## awk liest daraus die erste Spalte
## sed entfernt das fixe Wurzelverzeichnis und die Doppelpunkte (bessere Listenübersicht)
## dmenu starten mit individuellen Struktur- und Farbschema, Schriftart und Überschrift
## Auswahl in Variable "auswahl" zu display übergeben (Anzeige in ImageMagic)

auswahl=$(fc-list | awk '{print $1}' | sed 's/\/usr\/share\/fonts\///g' | sed 's/://g' | dmenu -bw 2 -l 40 -g 6 -nb '#2f343f' -nf '#fff7bc' -sb '#83af9b' -nhf '#000000' -nhb '#ff5555' -shb '#0a81f5' -shf '#ffffff' -p 'schriftarten:' -fn 'DejaVuSansBold:pixelsize=12')

display "/usr/share/fonts/$auswahl"
