variable "local_files_path" {}

resource "docker_image" "icinga2" {
  name = "jordan/icinga2"
}

resource "docker_container" "icinga2" {
  name    = "icinga2"
  image   = "${docker_image.icinga2.name}"
  restart = "always"

  ports = {
    internal = 80
    external = 8080
  }

  env = [
    "ICINGA2_FEATURE_GRAPHITE=false",
    "ICINGA2_FEATURE_DIRECTOR=false"   
  ]

  volumes = {
    host_path      = "${var.local_files_path}/etc_apache_ssl"
    container_path = "/etc/apache2/ssl"
  }
  volumes = {
    host_path      = "${var.local_files_path}/etc_locale.gen"
    container_path = "/etc/locale.gen"
  }
  volumes = {
    host_path      = "${var.local_files_path}/etc_ssmtp_revaliases"
    container_path = "/etc/ssmtp/revaliases"
  }
  volumes = {
    host_path      = "${var.local_files_path}/etc_ssmtp_ssmtp.conf"
    container_path = "/etc/ssmtp/ssmtp.conf"
  }
  volumes = {
    host_path      = "${var.local_files_path}/etc_icinga2"
    container_path = "/etc/icinga2"
  }
  volumes = {
    host_path      = "${var.local_files_path}/etc_icingaweb2"
    container_path = "/etc/icingaweb2"
  }
  volumes = {
    host_path      = "${var.local_files_path}/var_lib_mysql"
    container_path = "/var/lib/mysql"
  }
  volumes = {
    host_path      = "${var.local_files_path}/var_lib_icinga2"
    container_path = "/var/lib/icinga2"
  }
  volumes = {
    host_path      = "${var.local_files_path}/var_lib_php_sessions"
    container_path = "/var/lib/php/sessions/"
  }
}