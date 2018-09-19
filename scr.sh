#!/bin/bash
echo "Enter filename"
read a
read -p "Press [Enter] to open text editor"
vi $a
read -p "Press [Enter] to compile file"
gcc $a
read -p "Press [Enter] to execute file"
./a.out

