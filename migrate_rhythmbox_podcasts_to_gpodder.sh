#!/bin/bash
for URL in $(grep -A 5 -e podcast-feed ~/.local/share/rhythmbox/rhythmdb.xml | grep -e "<location>" | sed 's: *</*[a-t]*>::g')
do
	gpodder -s $URL
done
