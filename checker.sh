#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 01AUG2022
# Purpose: Script that detects if a file or directory exists, then creates it if it does not exist.

# Main

DIRECTORY=("dir1" "dir2" "dir3" "dir4")
FILE=("file1.txt" "file2.txt" "file3.txt" "file4.txt")

echo "Please input d to search for a directory or f to search for a file: "
read input1

while [[ $input1 = d ]]
do
    read -p "Please enter a directory  name: " input2
        if [ -d $DIRECTORY ]
            then   
                echo "$input2 exists. Goodbye"
                exit
            else [ -d $input2 ]
                echo "$input2 does not exist. A new directory is being created."
                mkdir $input2
                echo "Your directory has been created. Goodbye."
                exit
        fi
    done 
done   

while [[ $input1 = f ]]
do 
    echo "Please enter a file name: "
    read input3
        if [ -f $FILE]
            then
                echo "$input3 exists. Goodbye"
                exit
            else [ -f $input3]
                echo "$input3 does not exist. A new file is being created. Goodbye"
                touch $input3
                exit
        fi
    done
done

        
# End