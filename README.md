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

Om foto's te uploaden, moet je een album hebben. 
De albums staan in `_albums/`. 
De foto's staan in `pictures/`.

###### Het is belangrijk om de naam van het album en de pictures folder gelijk te houden

Stap 1:
Maak een album aan in `_albums/`, bijvoorbeeld `2019_01_30_eerste_vergadering.md`

In dit .md bestandje moet het volgende staan:

```

---
title: Vergadering 
folder: 2019_01_20_vergadering
layout: album
---

```

De titel kun je aanpassen naar wens. De rest is nodig om de pagina aan te maken

###### De naam van het bestand moet zijn: datum (yyyy-mm-dd) + de naam + .md 

Stap 2:
Maak een mapje aan in `pictures/` met DEZELFDE naam, bijvoorbeeld `2019_01_30_eerste_vergadering` 

###### Het is belangrijk dat het album en het mapje dezelfde naam hebben (maar zonder de .md extensie, want het is een folder)

Stap 3:
Plaats alle foto's in het zojuist aangemaakt mapje in `pictures`, bijvoorbeeld in `pictures/2019_01_30_eerste_vergadering`


##### Te moeilijk? Gebruik te helper

Voer het `foto_album_maken.sh` bestand uit (linux). Deze loopt je door de bovenstaande stappen door.

___
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


##### Te moeilijk? Gebruik te helper

Voer het `artikel_maken.sh` bestand uit (linux). Deze loopt je door de bovenstaande stappen door.

## Alles live zetten

Wees gerust, er kan weinig fout gaan. Er zit goede controle in, die eventuele fouten controleert. 

Handmatig: Push naar https://github.com/storeyclubwebsite/storeyclubwebsite

Automatisch: Voer het `uploaden.sh` bestand uit.

##### Notes

Je hebt toegang nodig om alles live te zetten. Vraag hierom per email, of eventueel op https://github.com/storeyclubwebsite/storeyclubwebsite/issues

Het duurt even om live te zetten

Als er errors zijn, dan zet hij het niet live. Je krijgt dan een email.
