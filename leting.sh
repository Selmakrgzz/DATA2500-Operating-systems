#! /bin/bash

leting() {
    for i in *; do
        pos=$(pwd)
        echo "Sjekker $i i $pos"

        if [ -f "$i" ] && [ "$i" = "filen.txt" ]; then
            echo "Filen 'filen.txt' er funnet i: $pos/$i"
            cat "$i"
        elif [ -d "$i" ]; then
            echo "Bytter til: $pos/$i"
            cd "$pos/$i"
            leting
            cd "$pos"
        fi
    done
}

leting

