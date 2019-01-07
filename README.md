# terraform-docker-icinga2

Install Icinga2 in a Docker container.

See https://hub.docker.com/r/jordan/icinga2 for more details.

# Prerequisites

```
$ brew install terraform
```

# Bind mount dirs

* files/etc_apache_ssl -> /etc/apache2/ssl
* files/etc_icinga2 -> /etc/icinga2
* files/etc_icingaweb2 -> /etc/icingaweb2
* files/var_lib_icinga2 -> /var/lib/icinga2
* files/var_lib_mysql -> /var/lib/mysql
* files/var_lib_php_sessions -> /var/lib/php/sessions
* files/etc_locale.gen -> /etc/locale.gen (file)
* files/etc_ssmtp_revaliases -> /etc/ssmtp/revaliases (file)
* files/etc_ssmtp_ssmtp.conf -> /etc/ssmtp/ssmtp.conf (file)
* files/etc_icinga2/conf.d/hostgroups.conf (file)
* files/etc_icinga2/conf.d/hosts.conf (file)
* files/etc_icinga2/conf.d/services.conf (file)
# Create

All bound files must be created before starting the container
```
$ touch files/etc_locale.ge
$ touch files/etc_ssmtp_revaliases
$ touch files/etc_ssmtp_ssmtp.conf
$ touch files/etc_icinga2/conf.d/hostgroups.conf
$ touch files/etc_icinga2/conf.d/hosts.conf
$ touch files/etc_icinga2/conf.d/services.conf
```

Fire up terraform 

```
$ terraform init
$ terraform plan
$ terraform apply
```

# Configuration

These configuration files can be modified:

* files/etc_icinga2/conf.d/hostgroups.conf
* files/etc_icinga2/conf.d/hosts.conf
* files/etc_icinga2/conf.d/service.conf

After modifying these files, restart the Docker container:

```
$ docker restart icinga2
```