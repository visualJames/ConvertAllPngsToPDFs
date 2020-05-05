#!/bin/bash


FILES="$(pwd)"
echo "$FILES"
FILES=$(ls $FILES | grep ".png")
i=1
zwischen=""
pdf=""
#merge alle png Files aus
for FILE in $FILES; {
  echo "$i: $FILE"
  i=$((i+1))
  #nimm das String und nimm vor dem . alles, also Emily.png wird zu Emily
  echo "$FILE" | cut --delimiter='.' --fields=1
  zwischen=$(echo $FILE | cut --delimiter='.' --fields=1)
  #printf "$(echo "$zwischen.pdf")" "$pdf"
  pdf=$(echo "$zwischen.pdf")
  echo $pdf
  echo $FILE
  #konvertiere das PDF
  convert "$FILE" "$pdf"
  echo "convert" $FILE $pdf
}
