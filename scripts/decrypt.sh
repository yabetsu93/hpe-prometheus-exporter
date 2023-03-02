#!/bin/sh

for FILE in `find . -name '*.enc.*'`
do 
    if [ -f "$FILE" ];
    then
        sops -d "$FILE" > "$(echo $FILE | cut -d . -f -2).dec.env"
    fi
done