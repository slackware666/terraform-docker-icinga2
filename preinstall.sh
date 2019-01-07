#!/bin/bash

DIRS="files/var_lib_mysql
files/etc_icinga2/conf.d
files/var_lib_icinga2
files/var_lib_php_sessions
files/etc_icingaweb2
files/etc_apache_ssl"

FILES="files/etc_icinga2/conf.d/hostgroups.conf
files/etc_icinga2/conf.d/hosts.conf
files/etc_icinga2/conf.d/services.conf"

for dir in $DIRS ; do
  test -d $dir || mkdir -p $dir
done

for file in $FILES ; do
  test -f $file || touch $file
done