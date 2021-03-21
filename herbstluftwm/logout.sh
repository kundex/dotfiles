#!/usr/bin/env bash
#
# Description: Logout, shutdown, reboot or lock screen.
# Dependencies: dmenu, systemd, slock
# Contributors: Derek Taylor (source), kunde_x

# An array of options to choose.
declare -a options=(
"Abmelden"
"Sperren"
"Neustart"
"Beenden"
"Zurück"
)

# Piping the above array into dmenu.
# We use "printf '%s\n'" to format the array one item to a line.
choice=$(printf '%s\n' "${options[@]}" | dmenu -i -p 'Sitzungsmenü:' -fn 'SauceCodePro Nerd Font:size=8')

case $choice in
    'Abmelden')
        answer="$(echo -e "Ja\nNein" | dmenu -i -p "Abmelden?" -fn 'SauceCodePro Nerd Font:size=8')"

        if [[ $answer == "Ja" ]]; then
		herbstclient quit
        fi
        if [[ $answer == "Nein" ]]; then
            exit 1
        fi
        ;;
    'Sperren')
        slock
        ;;
    'Neustart')
        answer="$(echo -e "Ja\nNein" | dmenu -i -p "Neustart?" -fn 'SauceCodePro Nerd Font:size=8')"

        if [[ $answer == "Ja" ]]; then
            systemctl reboot
        fi

        if [[ $answer == "Nein" ]]; then
            exit 1
        fi
        ;;
    'Beenden')
        answer="$(echo -e "Ja\nNein" | dmenu -i -p "Beenden?" -fn 'SauceCodePro Nerd Font:size=8')"

        if [[ $answer == "Ja" ]]; then
            systemctl poweroff
        fi

        if [[ $answer == "Nein" ]]; then
            exit 1
        fi
        ;;
    	*)
		exit 1
	;;
esac
