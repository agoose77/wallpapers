#!/usr/bin/env bash
THIS_DIR=$(dirname $(realpath "$0"))
BACKGROUND_DIR="${THIS_DIR}/current"

set-bg(){
    gsettings set org.gnome.desktop.background picture-uri "file://$1"
}

next-bg(){
    set-bg $(find -L "$BACKGROUND_DIR" -type f | shuf -n 1);
}


set-bg-folder(){
    ln -sfn "$1" "$BACKGROUND_DIR"
}
