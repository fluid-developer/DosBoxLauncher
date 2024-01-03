#!/bin/bash
#Functions

#Launcher
clear
echo -ne '\e[8;24;92t'
echo "██████   ██████  ███████ ██████   ██████  ██   ██"
echo "██   ██ ██    ██ ██      ██   ██ ██    ██  ██ ██"
echo "██   ██ ██    ██ ███████ ██████  ██    ██   ███"
echo "██   ██ ██    ██      ██ ██   ██ ██    ██  ██ ██"
echo "██████   ██████  ███████ ██████   ██████  ██   ██"
echo
echo "               ██       █████  ██    ██ ███    ██  ██████ ██   ██"
echo "               ██      ██   ██ ██    ██ ████   ██ ██      ██   ██"
echo "               ██      ███████ ██    ██ ██ ██  ██ ██      ███████"
echo "               ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██"
echo "               ███████ ██   ██  ██████  ██   ████  ██████ ██   ██"
echo "By FluidOff | V1.1 | Beta"
echo "Welcome to DOSBox Launcher, $USER!"
echo
echo "Want to laucnh DOSBox right now?"
echo "(no games will be mounted automatically)"
    if [[ $@ = AE ]]
    then
        REPLY = N
    else
        if [[ $@ = AL ]]
        then
            clear
            echo "██████   ██████  ███████ ██████   ██████  ██   ██"
            echo "██   ██ ██    ██ ██      ██   ██ ██    ██  ██ ██"
            echo "██   ██ ██    ██ ███████ ██████  ██    ██   ███"
            echo "██   ██ ██    ██      ██ ██   ██ ██    ██  ██ ██"
            echo "██████   ██████  ███████ ██████   ██████  ██   ██"
            echo
            echo "               ██       █████  ██    ██ ███    ██  ██████ ██   ██"
            echo "               ██      ██   ██ ██    ██ ████   ██ ██      ██   ██"
            echo "               ██      ███████ ██    ██ ██ ██  ██ ██      ███████"
            echo "               ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██"
            echo "               ███████ ██   ██  ██████  ██   ████  ██████ ██   ██"
            ls -d -- */
            read -p "Press any key to go into DOSBoxLauncher again..." -n 1 -r
        else
            read -p "" -n 1 -r
            echo
        fi
    fi
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    clear
    echo "██████   ██████  ███████ ██████   ██████  ██   ██"
    echo "██   ██ ██    ██ ██      ██   ██ ██    ██  ██ ██"
    echo "██   ██ ██    ██ ███████ ██████  ██    ██   ███"
    echo "██   ██ ██    ██      ██ ██   ██ ██    ██  ██ ██"
    echo "██████   ██████  ███████ ██████   ██████  ██   ██"
    echo
    echo "               ██       █████  ██    ██ ███    ██  ██████ ██   ██"
    echo "               ██      ██   ██ ██    ██ ████   ██ ██      ██   ██"
    echo "               ██      ███████ ██    ██ ██ ██  ██ ██      ███████"
    echo "               ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██"
    echo "               ███████ ██   ██  ██████  ██   ████  ██████ ██   ██"
    dosbox
    clear
    echo "goodbye, $USER"
else
    while IFS= read -r games; do
    clear
    echo "██████   ██████  ███████ ██████   ██████  ██   ██"
    echo "██   ██ ██    ██ ██      ██   ██ ██    ██  ██ ██"
    echo "██   ██ ██    ██ ███████ ██████  ██    ██   ███"
    echo "██   ██ ██    ██      ██ ██   ██ ██    ██  ██ ██"
    echo "██████   ██████  ███████ ██████   ██████  ██   ██"
    echo
    echo "               ██       █████  ██    ██ ███    ██  ██████ ██   ██"
    echo "               ██      ██   ██ ██    ██ ████   ██ ██      ██   ██"
    echo "               ██      ███████ ██    ██ ██ ██  ██ ██      ███████"
    echo "               ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██"
    echo "               ███████ ██   ██  ██████  ██   ████  ██████ ██   ██"
    done < games.conf
    echo "Enter [NUMBER] and then [ENTER]"
    echo "Registered games:"
    PS3=''
    options=("See games" "Exit" "Type in game folder")
    select opt in "${options[@]}"
    do
        case $opt in
            "See games")
                break
                ;;
            "Edit games")
                break
                ;;
            "Exit")
                break
                ;;
            "Type in game folder")
                break
                ;;
            *) echo "Invalid request"
                ;;
        esac
    done
    echo "selected - $opt"
    echo "${opt}" > /tmp/dblpath
    if [[ $opt = "See games" ]]
    then
        clear
        bash DBL.sh AL
    fi
: '    if [[ $opt = "Edit games" ]]
    then
        clear
        nano games.conf
        bash DBL.sh AE '
    fi
    if [[ $opt = "Exit" ]]
    then
        clear
        echo "goodbye, $USER"
    fi
    if [[ $opt = "Type in game folder" ]]
    then
        echo "Type in [GAME_NAME] and press [ENTER]"
        read -p "" -n 100 -r
        clear
        echo "██████   ██████  ███████ ██████   ██████  ██   ██"
        echo "██   ██ ██    ██ ██      ██   ██ ██    ██  ██ ██"
        echo "██   ██ ██    ██ ███████ ██████  ██    ██   ███"
        echo "██   ██ ██    ██      ██ ██   ██ ██    ██  ██ ██"
        echo "██████   ██████  ███████ ██████   ██████  ██   ██"
        echo
        echo "               ██       █████  ██    ██ ███    ██  ██████ ██   ██"
        echo "               ██      ██   ██ ██    ██ ████   ██ ██      ██   ██"
        echo "               ██      ███████ ██    ██ ██ ██  ██ ██      ███████"
        echo "               ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██"
        echo "               ███████ ██   ██  ██████  ██   ████  ██████ ██   ██"
        dosbox ~/DosBoxLauncher/$REPLY
        clear
        echo "goodbye, $USER"
    fi
