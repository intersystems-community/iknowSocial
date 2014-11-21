#!/bin/bash

# Вызываем программу управления Cache и передаем ей сформированный скрипт 
cat credentials.txt build.cos | csession cache

# Если при выполнении скрипта cos был создан файл-флаг ошибки - оповещаем об этом Jenkins
if [ -f error.flag ]; then
    echo "Error occured"
    rm error.flag
    exit 1
else
    echo "Success"
    exit 0
fi

