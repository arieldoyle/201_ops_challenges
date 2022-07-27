#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 27JUL2022      
# Purpose: Print a string to the terminal

# Defines variable result
result="The user session history for this PC is:"

# Defines function sessionHistory
function sessionHistory {
	echo $result
	echo "$(sudo last)"
}

# This function calls sessionHistory
sessionHistory

# End