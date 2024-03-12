#!/bin/bash

# Récupère le pourcentage de la batterie
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{print $2}' | tr -d '%')

# Vérifie si le pourcentage est inférieur à 20 %
if [ "$percentage" -lt 20 ]; then
    echo "Attention : Niveau de batterie inférieur à 20 % !"
    # Envoie une notification critique avec notify-send
    notify-send -u critical "Niveau de batterie faible" "Le niveau de batterie est inférieur à 20 % !"
fi

# Sortie du script après la vérification
exit 0
