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
echo "INSTALLER | By FluidOff"
echo "Are you sure you want to install DOSBoxLauncher?"
read -p "" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
cd ~/
git clone https://github.com/fluid-developer/DosBoxLauncher/
    echo "Want launch DBL right now?"
    read -p "" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    cd ~/DosBoxLauncher
    bash DBL.sh
    else
    echo
    echo "run bash DBL.sh from here to launch DOSBoxLauncher."
    fi
fi
