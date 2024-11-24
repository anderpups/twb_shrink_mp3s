#!/bin/bash
FILECOUNT=$(ls *.mp3 | wc -l)
INDEX=0
mkdir -p compressed
mkdir -p original
find . -name '*.mp3' -printf '%f\n' | while read FILE; do
  INDEX=$(( INDEX + 1 ))
  echo '-------------------------------------'
  echo "Compressing $FILE ($INDEX/$FILECOUNT)"
  echo '-------------------------------------'
  cp "$FILE" "original/$FILE";
  lame -b 56 "original/$FILE" "compressed/$FILE"
  rm "$FILE"
done