#!/bin/bash

# Вызываем программу управления Cache и передаем ей сформированный скрипт

mkdir -p /InterSystems/Cache/mgr/IKNOWSOCIAL/Resources
cp Resources/emotions.txt /InterSystems/Cache/mgr/IKNOWSOCIAL/Resources
cat credentials.txt <(echo "set jenkinsDir = \"/var/lib/jenkins/workspace/iknowsocial\"") build.cos | csession cache


# Если при выполнении скрипта cos был создан файл-флаг ошибки - оповещаем об этом Jenkins
if [ -f /var/lib/jenkins/workspace/iknowsocial/error.flag ]; then
    echo "Error occured"
    rm /var/lib/jenkins/workspace/iknowsocial/error.flag
    exit 1
else
    echo "Success"
    exit 0
fi
