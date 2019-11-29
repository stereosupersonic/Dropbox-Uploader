#!/bin/bash
HOME=/media/usb/dropbox
CONFIG_DIR=/home/stereosonic

cd $HOME
docker run -i --rm --user=$(id -u):$(id -g) -v $CONFIG_DIR:/config -v $HOME:/workdir stereosupersonic/dropbox_uploader:latest_pi upload * /