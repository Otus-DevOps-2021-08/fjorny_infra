#!/bin/bash

apt-get update
sleep 30s
apt-get install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v


