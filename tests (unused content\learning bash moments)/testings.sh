PS3='Please enter your choice: '
options=("game" "Edit games" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "game")
	    break
            ;;
        "Edit games")
            nano games.conf
	    break
            ;;
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo selected - $opt
