#!/bin/bash
LOG_FILE="/var/log/nginx/access.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
FILE_IP="CARRENT_IP.txt"
echo $LOG_FILE > report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i country >> report.txt
whois $DISCOVER_IP | grep -i descr >> report.txt
#whois $DISCOVER_IP | grep -i OrgName >> report.txt
whois $DISCOVER_IP | grep -i Organization >> report.txt
echo " " >> report.txt
done
echo Коннект за сутки | mutt -s "Суточный отчет" alex.lanovoy@gmail.com -a /var/log/dev/report.txt
