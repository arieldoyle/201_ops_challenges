#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 10AUG2022      
# Purpose: Show domain information

# Main

# Asks user for input of a website
read -p "Input a website (example: google.com/bing.com/amazon.com/etc): " input

# Defines function domainAnalyzer that runs whois, dig, host, and nslookup on the user input
function domainAnalyzer {
    touch domaininfo.txt
    whois $input > domaininfo.txt
    dig $input >> domaininfo.txt
    host $input >> domaininfo.txt
    nslookup $input >> domaininfo.txt
}

# Runs the function
domainAnalyzer

# End