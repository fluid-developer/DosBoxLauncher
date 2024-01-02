# DB Launcher - Simple and clean DosBox Launcher
DosBox Launcher is random project which aims to make dosbox game launching proccess easier

# Installation
hop on Releases page and download 'DBLI.sh' file, run it and then press 'y' to install.
after install you can press 'y' again to launch it immedately

# v1.0 | Alpha notice
You shall reconfigure the DBL file in order to add games

# To do so:
1. Open DBL.sh with any text editor
2. Uncomment all lines from line 37
3. Hop on line 34 and edit shortcut (In '[]' place any character(s) you want to be assigned to the game
4. Hop on line 39 and edit path to the game (Reccomended to place games in ~/DosBoxLauncher/game/folder eg ~/DosBoxLauncher/doom)

# To add more than 1 game/program:
1. copy lines from 34 to 40
2. paste on the next line
3. follow 'To do so:' fragment 3-4 but adding 6 to lines count
4. after, replace 'if' (first copied line) by 'elif' in order to work
5. repeat steps 1-4 and shifting line count by 6
