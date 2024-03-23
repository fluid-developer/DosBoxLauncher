#!/bin/bash
# Welcome, I don't know what you're seeking for here, it's really finished here.
# But feel free to edit, just, don't blame if something will break, k?

# base config
# bash config NOT WORKING! TEST FEATURE!
KIPHELLO=false
GAMESDIR=/home/fluid/des-short/.programs/DBLF

# DBL begins
if [[ $1 == "" ]]
then
bash banner c 
echo "DosBoxLauncher v2"

if [[ $KIPHELLO == "false" ]]
then
  echo "Press any key to enter menu"
  read -p '(You can disable this in Config.)'
fi
MENUKEY=$(cat menu | gum filter)

# Actual code goes here
# MENUS

bash banner c 
if [[ $MENUKEY == "Config" ]]
then
  $EDITOR config
  exit 0
fi 

if [[ $MENUKEY == "Changelog" ]]
then
  clear
  echo "DBL changelog."
  echo
  echo "V4 - Full rewrite."
  exit 0
fi

if [[ $MENUKEY == "Launch (Without mount)" ]]
then
  bash db
  exit 0
fi 

if [[ $MENUKEY == "Launch (Prompt mount folder)" ]]
then
  MOUNTDIR=$(ls -d -- $GAMESDIR | gum filter)
  bash db $MOUNTDIR
  exit 0
fi 

if [[ $MENUKEY == "Exit" ]]
then
  echo "Exitting..."
fi 
# END OF DBL
fi

