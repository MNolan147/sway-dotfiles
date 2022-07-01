#!/bin/sh

if [ ! -d "$HOME/.cache/bgp" ]; then
    mkdir $HOME/.cache/bgp
fi

if [ -f "$1" ]; then
    case $2 in
        stretch)
            convert "$1" -resize '1920x1200!' $HOME/.cache/bgp/background.png
            ;;
        scale)
            convert "$1" -resize '1920x1200^' $HOME/.cache/bgp/background.png
            ;;
        *)
            echo "Invalid fit type"
            exit
            ;;
    esac
    convert $HOME/.cache/bgp/background.png -scale 10% -blur 0x2.5 -resize 1000% $HOME/.cache/bgp/lockscreen.png
    wal -n -i "$1" 
    pywalfox update
else
    echo "Invalid file path"
    exit
fi
