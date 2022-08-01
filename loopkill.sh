#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 29JUL2022      
# Purpose: Script that kills the script that they just ran

# Main

#asking user to input y to start a ping process
startup=n
until [ $startup = "y" ]
do  
    echo "Please enter y to start the ping process"
    read startup
done

#started ping and waited for result
ping -c 10 192.168.0.1 
wait $PINGPID		    

#ran ps aux to list active processes
ps -aux
echo "Ping complete"		

#requests user to input PID to kill it for loopkill.sh
echo "Enter the PID for the command bash loopkill.sh"
read PID

#kills the user input PID for loopkill.sh
kill -9 $PID

# End