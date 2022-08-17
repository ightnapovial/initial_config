#! /bin/bash

#set e
file="/sys/class/backlight/intel_backlight/brightness"
current=$(cat "$file")
new="$current"

if [ "$1" = "-inc" ]
then
	new=$(( current + $2 ))
#	echo "increase"
#	echo "$new"
fi

if [ "$1" = "-dec" ]
then
        new=$(( current - $2 ))
#        echo "decrease"
#        echo "$new"
fi

#echo $1
#echo "$2"
#echo "hello"
echo "$new" | sudo tee "$file"
