#!/bin/bash
#Functions
db() {
    x11=$(<~/.DBLF/termux.mode)
    if [[ true = $x11 ]]
    then
    termux-x11 :1 -xstartup "dosbox ${@}"
    else
    dosbox $@
    fi
}
#Launcher
echo "setting up envovirment..."
path=$(<~/.DBLF/path.txt)
echo -ne '\e[8;24;92t'
bash logo.sh clear
echo "By FluidOff | V1.2 | Beta 2"
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
            bash logo.sh clear
            ls -d -- */
            read -p "Press any key to go into DOSBoxLauncher again..." -n 1 -r
        else
            read -p "" -n 1 -r
            echo
        fi
    fi
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    bash logo.sh clear
    db
    clear
    echo "goodbye, $USER"
else
    while IFS= read -r games; do
    clear
    bash logo.sh clear
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
        path=$(<~/.DBLF/path.txt)
        bash logo.sh clear
        echo "${path}/${REPLY}"
        db $path/$REPLY
        clear
        echo "goodbye, $USER"
        echo "path: ${path}/${REPLY}"
    fi
