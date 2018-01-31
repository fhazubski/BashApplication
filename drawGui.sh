#!/bin/bash

newNumberOfColumns=$(tput cols)
newNumberOfLines=$(tput lines)

fullRedraw=false
if [ $columns != $newNumberOfColumns ] \
     || [ $lines != $newNumberOfLines ] \
     || [ $drawnState != $state ]; then
    columns=$newNumberOfColumns
    lines=$newNumberOfLines
    drawnState=$state
    fullRedraw=true
fi

case $state in
    $STATE_CONNECTING )
        if [ $fullRedraw = true ]; then
            tput clear
            tput cup $(( $lines )) 0
            echo -n "Connecting..."
        fi
        ;;
esac
