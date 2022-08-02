#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 01AUG2022
# Purpose: Script that detects if a file or directory exists, then creates it if it does not exist.

# Main

#Defines arrays to be called on
ARRAY=( $( ls .) )

#Prints out current list in arrays
echo "The current list of directories/files: "
echo "              ${ARRAY[@]}"
echo ""

#Prompts user if they are looking for a directory or a file and stores it
echo "Please input d to search for a directory or f to search for a file: "
read input1

#Loop and Conditional to check if the directory or file is there based on the user inputting a d or a f
#Adds and closes if it is not
while [[ $input1 = d ]]
do
    read -p "Please enter a directory  name: " input2
        if [[ " ${ARRAY[*]} " =~ $input2 ]]
            then   
                echo "$input2 exists. Goodbye."
                exit
            else [ -d $input2 ]
                echo "$input2 does not exist. A new directory is being created."
                mkdir $input2
                echo "Your directory has been created. Goodbye."
                exit
        fi
done  

while [[ $input1 = f ]]
do 
    read -p "Please enter a file name (do not include extension - .txt default): " input3
        if [[ " ${ARRAY[*]} " =~ $input3 ]]
            then
                echo "$input3 exists. Goodbye."
                exit
            else [[ -f $input3 ]]
                echo "$input3 does not exist. A new file is being created. Goodbye."
                touch $input3.txt
                exit
        fi
done
        
# End