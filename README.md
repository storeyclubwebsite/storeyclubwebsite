# De storeyclub website

De github pages url:
https://storeyclubwebsite.github.io/storeyclubwebsite/

De url: http://storeyclub.nl/ 


## Markdown

In het kort: Markdown is een simpele taal om tekst snel vorm te geven. 

Voor meer informatie: 
- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
- https://www.markdownguide.org/getting-started

Editor: 
https://stackedit.io/

## De .md files

Dit zijn de markdown files. Vaak staat er aan het begin van de bestanden

```

---
title: My First Page
layout: index
---

```

Dit is meta informatie. Niet de pagina zelf, maar bevat informatie over de pagina. 
Deze informatie is nodig om te pagina te genereren. `Haal dit nooit weg!`.


De volgende attributen zijn eventueel aan te passen:
- title: De titel van de pagina
- description: Een korte beschrijven over de pagina

De volgende attributen NIET aanpassen:
- folder: Bepaalt de folder (voor plaatjes bijv)
- layout: Bepaalt de pagina stijl

#### !Warning: 
Alleen aanpassen indien je zeker weet wat je doet. Let op spaties en enters, die zijn belangrijk.

Kijk eventueel naar de andere `.md` bestandjes uit de zelfde folder


#### De tekst

De rest van het `.md` bestand is de opmaak van de pagina in markdown formaat

## Pagina's aanpassen

#### Home 

De home pagina kun je aanpassen door `index.md` aan te passen.

Op de homepagina worden ook alle nieuwe `posts` getoond. Later meer informatie over `posts`.

___
#### Agenda

De agenda pagina kun je aanpassen door `pages/agenda.md` aan te passen.

In plaats van een moeilijke agenda module, lijkt het mij het makkelijkst om de agenda in tekst te houden.

___
#### Foto's

De foto's staan in `pictures/`.

De foto's moeten in een folder staan.

#### Vrienden van de storeyclub

De vrienden van de storeyclub pagina kun je aanpassen in `pages/friends.md`

___
#### Contact

De contact pagina kun je aanpassen in `pages/contact.md`

___
## Een post maken

Om een post (een kort artikeltje) te maken, moet je een bestand aanmaken in `_posts/`

Dit bestand moet de datum bevatten in het volgende formaat `2019-01-01` (YYYY-MM-DD), 
met daarachter de naam, en dan de extensie `.md`.

###### De naam bevat - ipv _, omdat de posts een eigen url krijgen

Bijvoorbeeld `2019-01-30-nieuwe-site`

Aan het begin van het bestand moet het volgende staan:

```

---
title: Nieuwe website
description: Meer informatie...
---

```
Dit is om een titel en beschrijving te tonen op bijvoorbeeld de homepagina. 

Een voorbeeld van een volledig bestand is:

```

---
title: Vergadering Januari 2019
description: We gaan bier goedkoper maken
---

Vanaf 2019 kunnen we bier goedkoper gaan maken, want .....

```

`description` is dus slechts een korte beschrijving. Alle tekst daaronder is de tekst die op de pagina zelf komt.

## Alles live zetten

Wees gerust, er kan weinig fout gaan. Er zit goede controle in, die eventuele fouten controleert. 

Handmatig: Push naar https://github.com/storeyclubwebsite/storeyclubwebsite

Automatisch: Voer het `uploaden.sh` bestand uit.

##### Notes

Je hebt toegang nodig om alles live te zetten. Vraag hierom per email, of eventueel op https://github.com/storeyclubwebsite/storeyclubwebsite/issues

Het duurt even om live te zetten

Als er errors zijn, dan zet hij het niet live. Je krijgt dan een email.
