variable "deployment_image" {
  default = "docker.tubaloughlin.com/tubaloughlin-website:latest"
}
variable "deployment_environment" {
  default = "dev"
}
variable "replicas" {
  default = "3"
}
variable "deployment_endpoint" {
  type = "map"
  default = {
      dev  = "dev"
      qa   = "qa"
      prod = ""
      test = "test"
      stage  = "stage"
  }
}
variable "google_domain_name" {
 default = "tubaloughlin.com"
  }

output "application_endpoint" {
  value = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"
}