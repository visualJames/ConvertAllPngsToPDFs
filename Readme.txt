Ich habe dieses Skript gebaut, um mit pdftk mehrere Bilder zusammenzumergen. 
Ein Nachteil bei pdftk ist, dass es nur PDfs zusammenmergt.
Also muss ich es vorher in eine PDf konvertieren.
Mit "convert image.png image.pdf" geht dies,
wobei man noch etwas zumindest in Ubuntu ändern muss (https://stackoverflow.com/questions/42928765/convertnot-authorized-aaaa-error-constitute-c-readimage-453). 
Falls man alle png in dem Ordner umändern möchte, geht das leider auch nicht mehr mit convert, 
sondern man muss sich ein kleines Skript mit Hilfe von convert bauen. 
Hier ist mein kleines Skript für dieses Problem.
Hoffentlich kann es euch auch weiterhelfen
Also falls ihr mehrere PNGs in eurem Ordner habt und ihr wollt es in eine PDf umwandeln, um 
danach pdftk darauf z.B. zu benutzen, könnt ihr gerne mein Skript verwenden.
Falls ihr andere Datentypen umwandeln wollt, könnt ihr auch gerne mein Skript anpassen.
Dafür müsst ihr nur bei pdf=$(echo "$zwischen.pdf") einfach pdf=$(echo "$zwischen.jpg") für JPGs zum Beispiel schreiben.
(Hier PNG to JPG)
Falls ihr ein anderes Datentyp in PDF dagegen, umwandeln wollt, könnt ihr bei 
FILES=$(ls $FILES | grep ".png") es zu FILES=$(ls $FILES | grep ".jpg") ändern.
(Hier JPG to PDF)
Ohne Veränderung werden alle PNG zu PDFs umgewandelt.
