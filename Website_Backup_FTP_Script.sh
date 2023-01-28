#!/bin/bash

# Backup Script using FTP Protocol

mkdir -p /Direstory_Path/$(date +%d-%m-%y)

cd /Directory_Path/$(date +%d-%m-%y)
wget -r -m --ftp-user=Username --ftp-password=password ftp://URL/*

mysqldump -u username -h hostname -ppassword db-name > /bkp/backup/LiveSite_Backup/Your Site Name/$(date +%d-%m-%y)/db-name.sql
