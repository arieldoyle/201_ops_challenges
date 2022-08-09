#!/bin/bash

# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 09AUG2022      
# Purpose: Retrieves the IPv4 from a created text doc on the desktop and deletes the text doc while showing the IPv4 address in the cmd prompt

# Main

# Function:
    # To go to desktop
    # Generate ipconfig report in a text file
    # Selects only the IPv4 Address 
    # Removes the text file from the desktop
function Report {
    cd ~/Desktop
    $Generate_Network_Report = ipconfig /all > "network_report.txt"
    Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
    Remove-Item -Path "network_report.txt"
}

# Calls on the function to run
Report

# String that tells user that the IPv4 was printed and that the text file was deleted
echo "Printed IPv4 Address. Deleted the created text file. Goodbye."

# End