#-----compute/variables.tf-----
#===============================
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "subnet_ips" {}

variable "security_group" {}

variable "subnets" {}

variable "ssh_key_private" {
  default = "./service_terraform.pem"
}