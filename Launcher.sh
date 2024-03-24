#!/bin/bash
# Welcome, I don't know what you're seeking for here, it's really finished here.
# But feel free to edit, just, don't blame if something will break, k?

GAMESDIR=/home/fluid/des-short/.programs/DBLF

# DBL begins
if [[ $1 == "" ]]
then
bash banner c 
echo "Launching..."
MENUKEY=$(cat menu | gum filter)

# Actual code goes here
# MENUS

bash banner c 
if [[ $MENUKEY == "Config" ]]
then
  $EDITOR config
  comp=y
  exit 0
fi 

if [[ $MENUKEY == "Changelog" ]]
then
  clear
  cat changelog
  comp=y
  exit 0
fi

if [[ $MENUKEY == "Launch (Without mount)" ]]
then
  bash db
  comp=y
  exit 0
fi 

if [[ $MENUKEY == "Launch (Prompt mount folder)" ]]
then
  MOUNTDIR=$(ls -d -- $GAMESDIR | gum filter)
  bash db $MOUNTDIR
  comp=y
  exit 0
fi 

if [[ $MENUKEY == "Exit" ]]
then
  echo "Exitting..."
  comp=y
  exit 0
fi 
# END OF DBL
fi

# Failure report
if [[ $comp == "" ]]
then
  echo "DBL: Wrong argument / Code failure"
fi 
