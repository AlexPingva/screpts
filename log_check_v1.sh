#!/bin/bash
LOG_FILE="/var/log/nginx/access.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE > report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/nginx/error.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/nginx/lameya-access.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/nginx/lameya-error.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/nginx/download.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
cat CARRENT_SORT_IP.txt >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/nginx/download-error.log"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt
sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

LOG_FILE="/var/log/secure"
CARRENT_DATE=$(date +"%d")
cat $LOG_FILE |grep -v Accepted | grep $CARRENT_DATE | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > CARRENT_IP.txt


sort CARRENT_IP.txt > CARRENT_SORT_IP.txt && uniq CARRENT_SORT_IP.txt > UNIQ_IP.txt
FILE_IP="UNIQ_IP.txt"
echo $LOG_FILE >> report.txt
echo "===================================================================================================" >> report.txt
for DISCOVER_IP in $(cat $FILE_IP)
do
echo $DISCOVER_IP >> report.txt
whois $DISCOVER_IP | grep -i -e country -i -e descr -i -e OrgName -i -e Org-Name -i -e Organization >> report.txt
echo " " >> report.txt
done

cat CARRENT_IP.txt >> WEEKLY_REPORT.txt
cat report.txt
echo Коннект за сутки | mutt -s "Суточный отчет" alex.lanovoy@gmail.com -a /var/log/dev/report.txt
