#!/bin/bash

printf ""Hostname:" `hostname` \n" >> report.txt
printf "\n" >> report.txt

printf ""Current_Date:" `date` \n" >> report.txt
printf "\n" >> report.txt

printf ""IP_Address:" `hostname -I` \n" >> report.txt
printf "\n" >> report.txt

echo "DiskSpaceHumanReadableFormat:" >> report.txt 
df -h  >> report.txt
printf "\n" >> report.txt

echo "Last5From/var/log/messages:" >> report.txt
tail -5  /var/log/messages >> report.txt
