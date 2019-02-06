#!/bin/sh

# Vraag om de datum
echo "We maken eerst de datum aan "
echo "Voor welk jaar is het album?"
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
echo "Hoe moet het album bestand heten? (mag alleen kleine letters, cijfers of de _ (underscore) bevatten)"
read NAME
if ! [[ "$NAME" =~ ^[a-z0-9\_]+$ ]]
    then
        echo "Het mag alleen kleine letters, cijfers of de _ (underscore) bevatten"
        exit
fi

# Maak een album aan
touch "./_albums/${YEAR}_${MONTH}_${DAY}_${NAME}.md"

# Zet de default text er in
echo "---
title: ${TITLE}
folder: ${YEAR}_${MONTH}_${DAY}_${NAME}
layout: album
---
" > "_albums/${YEAR}_${MONTH}_${DAY}_${NAME}.md"

# Maak en pictures folder aan
mkdir "./pictures/${YEAR}_${MONTH}_${DAY}_${NAME}"

# Open de folder
nautilus "./pictures/${YEAR}_${MONTH}_${DAY}_${NAME}" 2>/dev/null &

exit