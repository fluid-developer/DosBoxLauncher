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

echo "By FluidOff | V1.0 | ALpha"
echo "Welcome to DosBox Launcher!"
echo
echo "Want to laucnh DOSBox in normal mode?"
echo "(Manual mount/Launch without parameters)"
read -p "" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    clear
    dosbox
    clear
else
    adv=true
    clear
    echo "Registered games:"
    echo "E - Exit"
    echo "Type in [FOLDER_NAME]/[FOLDER_NUMBER] and then press [ENTER]"
    read -p "" -n 1 -r
    echo
    if [[ $REPLY =~ ^[]$ ]]
    then
        clear
#        echo "note: game will not launch automatically, you need to look into game folder and look for [.exe]/[.bat]/[.com] files"
#        read -p "press [ENTER] to launch DosBox"
#        dosbox ~/DosBoxLauncher/Path/to/game/
#        clear
    elif [[ $REPLY =~ ^[Ee]$ ]]
    then
#        clear
        echo "Closing Laucnher..."
        echo "Edit the file and add your games here / follow tutorial in readme.md file."
    fi
fi
