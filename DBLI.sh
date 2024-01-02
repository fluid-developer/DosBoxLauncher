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
echo "Are you sure you want to install DBLauncher?"
read -p "" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
cd ~/
git clone https://github.com/fluid-developer/DosBoxLauncher/
cd ~/DosBoxLauncher
    echo "Want launch DBL right now?"
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    bash DBL.sh
    else
    echo "run bash DBL.sh from here to launch DosBoxLauncher."
    fi
fi
