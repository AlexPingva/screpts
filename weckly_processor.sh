#!/bin/bash
EXPECT_IP="192.168.0.111"
IPTABLES="/usr/sbin/iptables" #"$(which iptables)"
sort /var/log/dev/WEEKLY_REPORT.txt > /var/log/dev/WEEKLY_SORT_IP.txt && uniq /var/log/dev/WEEKLY_SORT_IP.txt > /var/log/dev/WEEKLY_REPORT.txt
file="/var/log/dev/WEEKLY_REPORT.txt"
sed -i '/0.0.0.0/d' ./WEEKLY_REPORT.txt
sed -i '/192.168.0.120/d' ./WEEKLY_REPORT.txt
sed -i '/192.168.0.107/d' ./WEEKLY_REPORT.txt
for DISCOVER_IP in $(cat $file)
do
echo $DISCOVER_IP

ABUS_EMAIL=$(whois $DISCOVER_IP | grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" | grep -m 1 abuse)
echo $ABUS_EMAIL
#$IPTABLES -I INPUT -s $DISCOVER_IP -j REJECT
iptables -I INPUT --source $DISCOVER_IP --jump REJECT
echo "                   " Dear Administrator, > leter.txt
echo Please, be informed that IP address " " $DISCOVER_IP " " of your network has been used for brute force attacks and has been blocked. >> leter.txt
echo Best regards, >> leter.txt
echo Alex, system administrator lameyatv.sytes.net >> leter.txt
echo Abuse | mutt -s "Abuse" $ABUS_EMAIL < /var/log/dev/leter.txt
done
rm -f ./WEEKLY_REPORT.txt
