#!/bin/bash

ROOT_LOGIN=$(w | grep root -c)
ROOT_IP="$(w | grep root | awk '{print $ 3}')"
NORMAL_INIT=1

echo $ROOT_LOGIN"     "$ROOT_IP
if [ "$ROOT_LOGIN" -gt 1 ]
then 
	curl --header 'Content-Type: application/json' --request 'POST' --data '{"chat_id":"597894998","text":"Количество root сессий больше 1!!!"}' "https://api.telegram.org/bot783825278:AAH6EAh1YT39lx9WMT0DJ-sbcu6FBQdowYA/sendMessage"
	date > /var/log/allert.txt && w >> /var/log/allert.txt
	echo Количество root подключений более 1 | mutt -s "Connection allert" alex.lanovoy@gmail.com -a /var/log/allert.txt	
fi

echo $ROOT_IP

if [ "$ROOT_IP" != "192.168.0.107" ]
then
        curl --header 'Content-Type: application/json' --request 'POST' --data '{"chat_id":"597894998","text":"Логин с внешнего IP"}' "https://api.telegram.org/bot783825278:AAH6EAh1YT39lx9WMT0DJ-sbcu6FBQdowYA/sendMessage"
        date > /var/log/allert.txt && w >> /var/log/allert.txt
        echo Логин с внешнего IP | mutt -s "Connection allert" alex.lanovoy@gmail.com -a /var/log/allert.txt
fi

