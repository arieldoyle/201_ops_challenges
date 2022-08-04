#!/bin/bash

# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 04AUG2022      
# Purpose: Automatically retrieves data from Event Viewer

# Main

# Outputs all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\user\OneDrive\Desktop\errors.txt

# Outputs all “error” type events from the System event log to a file on your desktop named errors.txt
Get-EventLog -LogName System -InstanceId 16

# Print to the screen all events with ID of 16 from the System event log
Get-EventLog -LogName System -Newest 20

# Print to the screen the most recent 20 entries from the System event log
Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source

# Print to the screen all sources of the 500 most recent entries in the System event log
EndGet-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\user\OneDrive\Desktop\last_24.txt

# End