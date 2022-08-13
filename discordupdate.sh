#!/bin/bash
DIR=$(pwd)
DISCORD_PATH=$(whereis discord)
cd /tmp
echo "downloading..."
wget  -O discordlatest.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"
echo "unpacking..."
tar -xvf discordlatest.tar.gz
echo "installing..."
rsync -r Discord/* /data/tools/Discord
echo "cleaning..."
rm -rf Discord
rm discordlatest.tar.gz
echo "DONE"
cd $DIR
