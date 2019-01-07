#!/bin/bash

mkdir -p files/var_lib_mysql \
  files/etc_icinga2/conf.d \
  files/var_lib_icinga2 \
  files/var_lib_php_sessions \
  files/etc_icingaweb2 \
  files/etc_apache_ssl

touch files/etc_icinga2/conf.d/hostgroups.conf \
  files/etc_icinga2/conf.d/hosts.conf \
  files/etc_icinga2/conf.d/services.conf