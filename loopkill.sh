#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 29JUL2022      
# Purpose: Script that kills the script that they just ran

# Main

startup=n
until [ $startup = "y" ]
do  
    echo "Please enter y to start the ping process"
    read startup
done

ping -c 10 192.168.0.1 

PINGPID=$!	
wait $PINGPID		    

ps -aux
echo "Ping complete"		

echo "Enter the PID for the command bash loopkill.sh"
read PID

kill -9 $PID


# End