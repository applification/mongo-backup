#!/bin/sh
DIR=`date +%m%d%y`
DEST=./$DIR
mkdir $DEST
/Users/[user]/mongodump --host [host] --port [port] -d ef -u [mongodb username] -p [mongodb password] -o $DEST
