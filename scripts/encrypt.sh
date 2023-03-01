#!/bin/sh

for FILE in `find . -name '*.dec.*'`
do 
    if [ -f "$FILE" ];
    then
        sops -e "$FILE" > "$(echo $FILE | cut -d . -f -2).enc.yaml"
    fi
done