#!/bin/bash

DIR="/home/$USER/.dotfile"

if which git stow &> /dev/null; then
    function push {
        if [[ -d $DIR ]]; then
            cd /home/$USER/.dotfile
            git init
            git add .
            git commit -m "update"
            git push -u origin master
        else
            echo ".dotfile directory not found"
        fi
    }

    function sync_in {
        git clone https://github.com/BirajKhanal/.dotfile.git /home/$USER/.dotfile
        cd .dotfile
        stow -t ~ .
    }
else
    echo " Command git and stow both required "
fi

case "$1" in
    -s )
        sync_in
        ;;
    -p )
        push
        ;;
    -h )
        echo " git and stow required to sync "
        echo " '-s' To sync .dotfile to pc "
        echo " '-p' To push the directory to git"
        ;;
     *)
        echo "-h flag for help"
        ;;
esac 
