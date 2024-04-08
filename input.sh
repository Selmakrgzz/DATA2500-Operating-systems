#! /bin/bash


while (( $# > 0 ))
do	fil="$1"
	if [ -f "$fil" ]
	then
        	echo "dette er en fil";
        	tegn=$(echo "$fil" | cut -c 1)
        	if [ "$tegn" = "/" ]
        	then
                	echo "Denne filen: $fil har en absolutt path";
        	else
                	echo "Denne filen: $fil har en relativ path";
        	fi
	else
        	echo "dette er ikke en fil";
	fi
	shift
done
