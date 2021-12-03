#!/bin/bash

echo Скачивание кода и запуск приложения
echo Устанавливаем Git
sudo apt update
sudo apt install -y git
echo Переходим в папку юзера из которой будет запускаться приложение
cd ~
pwd
echo Выполняем скачивание проекта
git clone -b monolith https://github.com/express42/reddit.git
echo Переходим в директорию проекта и запускаем его сборку
cd ./reddit && bundle install
echo Запускаем приложение
puma -d 


