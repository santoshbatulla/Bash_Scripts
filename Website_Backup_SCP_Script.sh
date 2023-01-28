#!/bin/bash

# Backup Script using SCP Protocol

DATE="$(date +%d-%m-%y-%H-%M)"
DB_USER=""
HOST=""
PASSWORD=""
SITE_NAME=""
OUTPUT="/path/$SITE_NAME/$(date +%d-%m-%y)"

DB1=""

mkdir -p $OUTPUT/$SITE_NAME

mysqldump -h $HOST -u $DB_USER -p$PASSWORD $DB1 > $OUTPUT/$DB1-$DATE.sql
gzip $OUTPUT/$DB1-$DATE.sql

scp -r user@example.com:/home//public_html $OUTPUT/$SITE_NAME

cd $OUTPUT
zip -r -m -T $SITE_NAME.zip $SITE_NAME

sudo chown -R user:user $OUTPUT
sudo chmod -R 777 $OUTPUT

