#!/bin/bash

yc compute instance create \
 --name reddit-done \
 --hostname reddit-done \
 --memory=4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --zone ru-central1-a \
 --metadata-from-file user-data=create-reddit-done.yaml

