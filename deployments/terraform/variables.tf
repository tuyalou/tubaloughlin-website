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
      dev  = "dev.tubaloughlin"
      qa   = "qa.tubaloughlin"
      prod = "tubaloughlin"
      test = "test.tubaloughlin"
      stage  = "stage.tubaloughlin"
  }
}
variable "google_domain_name" {
 default = "tubaloughlin.com"
  }
