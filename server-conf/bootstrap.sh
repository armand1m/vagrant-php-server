#!/usr/bin/env bash

rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

# update and upgrade yum
yum update -y
yum upgrade -y

# update kernel
yum install kernel.x86_64 kernel-devel.x86_64 -y

# install apache
yum install httpd -y

# install composer
curl -sS https://getcomposer.org/installer | php

# install php
yum install php55w php55w-opcache php55w-soap php55w-intl php55w-pecl-xdebug php55w-pgsql php55w-xml php55w-xmlrpc php55w-ldap php55w-gd -y
