#!/bin/bash

# Script: Ops 201 Class 08 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 03AUG2022      
# Purpose: Automatically save desktop work file to a internal hard drive

# Main
# Input into Notepad and saved as a batch file
# Copies everything
# Deletes copies
ROBOCOPY "C:\Users\j.thompson\Desktop\My Project Files" "G:\My Project Files Backup" /e /purge

# In Task Scheduler set it to run at log off by j.thompson
# Ran it using admin for priviledges

# End