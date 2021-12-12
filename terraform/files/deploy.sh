#! /bin/bash
sleep 30s
set -e
APP_DIR=$HOME
sudo apt-get update
sleep 30s
sudo apt-get install -y git policykit-1
mkdir -p $APP_DIR/reddit
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sleep 10s
sudo cp /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma