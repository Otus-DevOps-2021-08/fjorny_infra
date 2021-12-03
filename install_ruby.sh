#!/bin/bash

echo Сейчас будет происходить установка Ruby & Bundler
echo Обновляем список пакетов
sudo apt update
sudo install -y ruby-full ruby-bundler build-essential
echo Версия ruby
ruby -v
echo bundler
bundler -v


