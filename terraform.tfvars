docker_url = "unix:///var/run/docker.sock"
local_files_path = "/Users/michael.ehrenreich/private/git/terraform-docker-icinga2/files"

icinga2 = {
  hostname      = "icinga2.localdomain"
  port_internal = 80
  port_external = 8080
}