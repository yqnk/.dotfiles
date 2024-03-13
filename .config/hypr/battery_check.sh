#!/bin/zsh

if [[ -f /tmp/battery_check.lock ]]; then
    echo "Already running."
    exit 1
fi

touch /tmp/battery_check.lock
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{print $2}' | tr -d '%')

if [ "$percentage" -lt 20 ]; then
    # Envoie une notification critique avec notify-send
    notify-send -u critical "Low battery" "20% left"
fi

# Supprime le fichier de verrouillage lorsque le script est terminé
rm /tmp/battery_check.lock

# Sortie du script après la vérification
exit 0
