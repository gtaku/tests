#!/bin/sh

yum clean all
yum -y update

# RPMforge
yum -y install http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
sed -i -e "s/enabled = 1/enabled = 0/g" /etc/yum.repos.d/rpmforge.repo

# epel
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sed -i -e "s/enabled = 1/enabled = 0/g" /etc/yum.repos.d/epel.repo

# remi
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sed -i -e "s/enabled = 1/enabled = 0/g" /etc/yum.repos.d/remi.repo

# wing
curl -O http://wing-repo.net/wing/6/EL6.wing.repo
curl -O http://wing-repo.net/wing/extras/6/EL6.wing-extras.repo
mv EL6.wing.repo /etc/yum.repos.d/
mv EL6.wing-extras.repo /etc/yum.repos.d/

yum -y update --enablerepo=rpmforge,epel,remi,remi-php55,wing
yum -y install yum-priorities

# MySQL 5.6
yum -y remove mysql*
yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
yum -y install mysql

# Apache 2.2
yum -y install httpd --enablerepo=wing

# PHP 5.5
yum -y install --enablerepo=remi,remi-php55 php

# phpMyAdmin
yum -y install --enablerepo=remi gd-last
yum -y install --enablerepo=remi-php55 php-gd
yum -y install --enablerepo=remi ImageMagick-last
yum -y install --enablerepo=remi-php55 phpMyAdmin


