#!/bin/bash

#mysql

service mysql status| grep 'mysql start/running' > /dev/null 2>&1
if [ $? != 0 ]
then
    service mysql start
fi

service mysql status| grep 'mysql start/running' > /dev/null 2>&1
if [ $? != 0 ]
then
    service mysql start
fi
