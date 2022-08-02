#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 02AUG2022      
# Purpose: 

# Main
#Prompts user with warning to ensure they are using the sudo to see system specs
#Will continue if they input n
#Will exit if they input y with instructions to run the script under sudo
echo "Ensure you run this script as sudo bash sysinfo.sh. Do you wish to re-type your bash command? (y/n)"
read input
echo "Exiting the script. Please enter the script as *sudo bash sysinfo.sh* to try again."

while [[ $input == n ]]
do 

#Displays Computer Name
echo "Computer Name:"
hostnamectl | grep 'hostname'
echo ""

#Displays CPU specs: 
#Product, Vendor, Physical ID, Bus info, Width
echo "CPU Specs:"
lshw -c processor | grep 'product\|vendor\|physical\|bus\|width'
echo ""

#Displays RAM specs: 
#Description, Physical ID, Size
echo "RAM Specs:"
lshw -c memory | grep '*-memory\|description\|physical\|size'
echo ""

#Displays Display Adapter specs: 
#Description, Product, Vendor, Physical ID, Bus Info, Width, Clock, Capabilities, Configuration, Resources
echo "Display Adapter Specs:"
lshw -c display | grep 'description\|product\|vendor\|physical\|bus\|logical\|version\|serial\|size\|capacity\|width\|clock\|capabilities\|configuration\|resource'
echo ""

#Displays Network Adapter specs: 
#Description, Product, Vendor, Physical ID, Bus Info, Logical Name, Version, Serial, Size, Capacity, Width, Clock, Capabilities, Configuration, Resources
echo "Network Adapter Specs:"
lshw -c network
echo ""

echo "This is the end of the system information specs. Thank you for stopping by. Goodbye! "
exit

done

# End