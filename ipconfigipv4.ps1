#!/bin/bash

# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 09AUG2022      
# Purpose: Retrieves the IPv4 from a created text doc on the desktop and deletes the text doc while showing the IPv4 address in the cmd prompt

# Main

# To go to desktop
cd ~/Desktop

# Generate ipconfig report in a text file
$Generate_Network_Report = ipconfig /all > "network_report.txt"

# Selects only the IPv4 Address 
Select-String -Path "network_report.txt" -Pattern "IPv4 Address"

# Removes the text file
Remove-Item -Path "network_report.txt"

# End