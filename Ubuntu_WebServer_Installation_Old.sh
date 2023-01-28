#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y apt-transport-https curl

#Apache2
#--------------------------------------------------
apt-get update
apt-get install -y apache2

#Mysql - 5.6
#-----------------------------------------------------

apt-get install -y software-properties-common
add-apt-repository -y ppa:ondrej/mysql-5.6
apt-get update
apt-get install -y mysql-server-5.6
mysql_secure_installation

#PHP - 5.6
#-----------------------------------------------------------

apt-get install -y python-software-properties
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php5.6

apt-get -y install php5.6-common php5.6-fpm php5.6-intl php5.6-mysql php5.6-curl php5.6-gd php5.6-json php5.6-zip php5.6-cgi php5.6-dev php5.6-mbstring php5.6-pgsql php5.6-xml php5.6-cli php5.6-mcrypt php5.6-phpdbg php5.6-soap php5.6-xmlrpc

#Phpmyadmin
#-------------------------------------------------------------------
apt-get install -y phpmyadmin

#Git
#-----------------------------------------------------------------

apt-get update
apt-get install -y build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip
apt-get install -y git
