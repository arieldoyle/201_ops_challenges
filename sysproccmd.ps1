#!/bin/bash

# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Ariel D.                  
# Date of latest revision: 05AUG2022      
# Purpose: Various operations with the process family of PowerShell commandlets

# Main

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object ID -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WS -Descending | Select-Object -first 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start-Process -FilePath iexplore https://owasp.org/www-project-top-ten/

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
for ($i=0; $i -lt 11; $i++) { Start-Process iexplore https://owasp.org/www-project-top-ten} 

# Close all Internet Explorer windows.
Get-Process iexplore | Stop-Process

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
$ProcessID = Get-Process iexplore | Select-Object Id | % { $_.Id }
Stop-Process -Id $ProcessID

# End