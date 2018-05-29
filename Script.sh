#!/bin/bash

#Temp files for storing user data
temp1=$(tempfile 2>/dev/null)
temp2=$(tempfile 2>/dev/null)
temp3=$(tempfile 2>/dev/null)
temp4=$(tempfile 2>/dev/null)

#Main functionality
main_menu() {
    dialog --menu "Choose action:" 20 40 5 "1" "Create user" "2" "Delete user"  2>$temp4

if [ "$?" = "0" ]
then
        _return=$(cat $temp4)
 
        if [ "$_return" = "1" ]
        then
                credentials
        fi
 
        if [ "$_return" = "2" ]
        then
                delete
        fi

else
        main_menu
fi
 }

#User data input and saving in temp files
credentials() {

dialog --title "Create new user" --clear\
 --inputbox "Enter user name" 10 30 2>$temp1

dialog --title "Create new user" --clear\
 --inputbox "Enter password" 10 30 2>$temp2

ret=$?

case $ret in
  0)
    	confirm;;
  1)
    	main_menu;;
esac

}

#Confirmation that user was created succesfully
confirm(){

dialog --title "Are you sure?" --clear\
 	--yesno "User: $(cat $temp1) with password $(cat $temp2) will be created." 10 30
	
case $? in
  0)
	sudo useradd -p $(openssl passwd -1 "$(cat $temp2)") "$(cat $temp1)"
	sudo mkdir /home/$(cat $temp1)
	sudo touch /var/mail/$(cat $temp1)
	sudo chown $(cat $temp1):$(cat $temp1) /home/$(cat $temp1)
    	dialog --infobox "User was created succesfully" 10 30;;
  1)
    	main_menu;;

esac

}

#fucntionality to delete user
delete(){

dialog --title "Delete user" --clear\
 --inputbox "Enter the user name you want to delete:" 10 30 2>$temp3
dialog --title "Are you sure?" --clear\
 	--yesno "User: $(cat $temp3) will be deleted." 10 30
case $? in
  0)
 	sudo userdel "$(cat $temp3)" -r -f;;
 	#dialog --infobox "Lietotājs veiksmīgi dzēsts!" 10 30;;
  1)
   	main_menu;;

esac

}

main_menu

