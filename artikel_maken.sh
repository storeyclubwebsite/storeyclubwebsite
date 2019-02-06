#!/bin/sh

# Vraag om de datum
echo "We maken eerst de datum aan "
echo "Voor welk jaar is dit artikel?"
read YEAR
if ! [[ "$YEAR" =~ ^[0-9]{4}$ ]]
    then
        echo "Het moeten 4 nummers zijn"
        exit
fi

echo "Voor welke maand? (bijv 01 voor januari)"
read MONTH

if ! [[ "$MONTH" =~ ^[0-9]{2}$ ]]
    then
        echo "Het moeten 2 nummers zijn"
        exit
fi

echo "Voor welke dag? (bijv 01 ipv 1)"
read DAY

if ! [[ "$DAY" =~ ^[0-9]{2}$ ]]
    then
        echo "Het moeten 2 nummers zijn"
        exit
fi

# Vraag om een mooie naam
echo "Hoe moet de titel van de pagina heten?"
read TITLE

# Vraag om de naam
echo "Hoe moet het artikel bestand heten? (mag alleen kleine letters, cijfers of de _ (underscore) bevatten)"
read NAME
if ! [[ "$NAME" =~ ^[a-z0-9\_]+$ ]]
    then
        echo "Het mag alleen kleine letters, cijfers of de _ (underscore) bevatten"
        exit
fi

# Maak een post aan
touch "./_posts/${YEAR}-${MONTH}-${DAY}-${NAME}.md"

# Zet de default text er in
echo "---
title: ${TITLE}
description: Meer informatie...
---

Pas deze tekst aan

Pas eventueel de description aan
" > "_posts/${YEAR}-${MONTH}-${DAY}-${NAME}.md"

# Open de folder
nautilus "./_posts" 2>/dev/null &

exit