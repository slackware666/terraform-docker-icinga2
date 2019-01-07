variable "docker_url" {}

provider "docker" {
  host = "${var.docker_url}"
}