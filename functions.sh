#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 27JUL2022      
# Purpose: Print a string to the terminal

# Defines function sessionHistory
function sessionHistory {
	echo "$(sudo last -f /var/log/wtmp)"
}

# This function calls sessionHistory
sessionHistory

# End