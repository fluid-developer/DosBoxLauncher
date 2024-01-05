#!/bin/bash
bash logo.sh clear
echo "Installer v1.2 | By FluidOff"
echo "Are you sure you want to install DBL?"
read -p "" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cd ~/
    git clone https://github.com/fluid-developer/DosBoxLauncher/

    echo "Want to change install directory?"
    read -p "" -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo
        echo "Where to install? (~/ NOT accepted)"
        echo "                      (Use /home/${USER} instead)"
        read -p "" -n 100 -r
        echo "install directory is: ${REPLY}"
        mkdir $REPLY
        mkdir $REPLY/DBLF
        mv ~/DosBoxLauncher/* $REPLY/DBLF
        mv $REPLY/DBLF/shortcut.sh $REPLY
        rm -rf $REPLY/DosBoxLauncher
        echo "if no errors were made in path, the install is completed"
        echo "move your games into ${REPLY} and NOT into DBLF folder"
        echo "(the DBLF folder is DBLFiles so dont touch anything in that!)"
        PC=true
        mkdir /home/$USER/.DBLF
        touch /home/$USER/.DBLF/path.txt
        echo "${REPLY}" > /home/$USER/.DBLF/path.txt
    fi
    touch /home/$USER/.DBLF/termux.mode
    echo "Are you on termux?"
    read -p "" -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
    then
    echo "true" > /home/$USER/.DBLF/termux.mode
    else
    echo "false" > /home/$USER/.DBLF/termux.mode
    fi
    echo "Want launch DBL right now?"
    read -p "" -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
    then
        if [[ $PC = true ]]
        then
        path=$(<~/.DBLF/path.txt)
        cd $path/DBLF
        echo
        echo "path changed"
        else
        echo
        cd ~/DosBoxLauncher
        echo "stock path"
        fi
    echo $path
    bash DBL.sh
    else
    echo
    echo "run bash DBL.sh from ${path} to launch DOSBoxLauncher."
    fi
fi
