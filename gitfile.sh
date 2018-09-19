#!/bin/bash
echo "Welcome to Git commiting script. This script will automatically place
commits in your remote repository. So let's start....?? Do you want to continue?(Y/n)"
read choice
if [ $choice == "Y" ] || [ $choice == "y" ]
then
	echo "1->Initialize a git repository
2->Push all the files(If repository already initialized)
	"
	read num1
	case $num1 in
		1) echo"Initializing the git repository in folder."
			git init
			git status
			git add .
			echo "Enter your commiting message."
			read message
			git commit -m "$message"
			echo "Enter remote origin address."
			read address
			echo "Adding orgin..."
			git remote add origin1 "$address"
			echo "Added.....Now pushing your files...."
			git push -u origin1 master
			echo "Pushed......"
			;;
		2)echo "Running status...."
			git status
			read -e -p "Is it showing untracked files?(Y/n)" ch
			if [ $ch == "Y" ] || [ $ch == "y" ]
			then
				echo "Adding all the files"
				git add .
				echo "Enter your commiting message"
				read message
				echo "Creating nodes..."
				git commit -m "$message"
				echo "Checking whether you had added remote origin"
				git remote show origin1
				read -e -p "Is it showing FETCH URL's and PUSH URL's?(Y/n)" fp
				if [ $fp == "Y" ] || [ $fp == "y" ]
				then
					echo "Pushing your changes....into master branch"
					git push -u origin1 master
					echo "Pushed your changes into your remote URL's kindly have a look"
					echo "Exiting the script......Thank you."
				else
					echo "Then first add your origin address(URL's)"
					read address
					git remote add origin1 "$address"
					echo "Pushing your changes...."
					git push -u origin1 master
					echo "Pushed.....Your changes into $address.Kindlly have a look over that"
					echo "Exiting the script.......Thank you."
				fi
			else
				echo "There is nothing to commit. First make changes in your repository"
			fi
			;;
		*)echo "Enter correct case......"
	esac
else
	echo "Exiting the script......."
	echo "Thank You"
fi





