#-----compute/variables.tf-----
#===============================
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "subnet_ips" {}

variable "security_group" {}

variable "subnets" {}

variable "key_name" {
    type = string
    default = "service_terraform"
}

variable "ssh_key_private" {
  default = "./service_terraform.pem"
}