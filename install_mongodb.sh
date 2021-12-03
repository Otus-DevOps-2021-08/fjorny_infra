#!/bin/bash

echo Установка MongoDB
echo Скачиваем и добавляем ключ реипозитория 
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo Добавляем репозиторий
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodborg/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
echo Обновляем список пакетов и устанавливаем MongoDB
sudo apt update
sudo apt install -y mongodb-org
echo Прописываем Mongodb в автозагрузку и запускаем сервис
sudo systemctl enable mongod
sudo systemctl start mongod
echo Версия mongod
mongod --version


