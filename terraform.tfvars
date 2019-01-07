docker_url       = "unix:///var/run/docker.sock"

icinga2 = {
  hostname      = "icinga2.localdomain"
  image         = "jordan/icinga2"
  port_internal = 80
  port_external = 8080
}