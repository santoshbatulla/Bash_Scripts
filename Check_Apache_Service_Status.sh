#!/bin/bash

# apache2

service apache2 status| grep 'apache2 is running' > /dev/null 2>&1
if [ $? != 0 ]
then
    service apache2 start
fi

service apache2 status| grep 'apache2 is running' > /dev/null 2>&1
if [ $? != 0 ]
then
    service apache2 start
fi
