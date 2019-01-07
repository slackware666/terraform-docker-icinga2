#!/bin/bash
NAME="icinga2"
IMAGE="jordan/icinga2"
THIS_DIR=$(cd `dirname $bash_source[0]`; pwd -P)

./preinstall.sh

docker run -d --name icinga2 -p 8080:80 \
  -v $THIS_DIR/files/etc_apache_ssl:/etc/apache2/ssl \
  -v $THIS_DIR/files/etc_icinga2:/etc/icinga2 \
  -v $THIS_DIR/files/etc_icingaweb2:/etc/icingaweb2 \
  -v $THIS_DIR/files/var_lib_icinga2:/var/lib/icinga2 \
  -v $THIS_DIR/files/var_lib_mysql:/var/lib/mysql \
  -v $THIS_DIR/files/var_lib_php_sessions:/var/lib/php/sessions \
  -v $THIS_DIR/files/etc_locale.gen:/etc/locale.gen \
  -v $THIS_DIR/files/etc_ssmtp_revaliases:/etc/ssmtp/revaliases \
  -v $THIS_DIR/files/etc_ssmtp_ssmtp.conf:/etc/ssmtp/ssmtp.conf --restart always \
  -e "ICINGA2_FEATURE_GRAPHITE=false" \
  -e "ICINGA2_FEATURE_DIRECTOR=false" \
  $IMAGE