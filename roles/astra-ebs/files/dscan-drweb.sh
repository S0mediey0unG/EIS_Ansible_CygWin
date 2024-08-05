#!/bin/bash
echo "Выполним сканирование каталогов /etc, /var и  /lib :"
drweb-ctl scan /etc
drweb-ctl scan /var
drweb-ctl scan /lib
echo "===================================================================================================================="
echo "Выполним сканирование активных процессов:"
drweb-ctl procscan
