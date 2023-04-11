#!/bin/bash
echo "Выполним сканирование главной загрузочной информации."
df -h | grep  "/boot$" 
if [ $? -eq 0 ]
then 
path1=`df -h | grep "/boot$" | cut -d" " -f1`
echo "Проверяем в $path1"	
drweb-ctl bootscan $path1
else
path2=`df -h | grep "/$" | cut -d" " -f1`
echo "Проверяем в $path2"	
drweb-ctl bootscan $path2
fi
echo "Сканирование завершено."
