#!/usr/bin/env bash


BACKGROUND_DIR="$HOME/Pictures/wallpapers/current"


set-bg(){
    gsettings set org.gnome.desktop.background picture-uri "$1"
}

next-bg(){
    bgpath=$(ls "$BACKGROUND_DIR" | shuf -n 1);
    set-bg "$BACKGROUND_DIR/$bgpath";
}


set-bg-folder(){
    ln -sfn "$1" "$BACKGROUND_DIR"
}
