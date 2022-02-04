#-----compute/variables.tf-----
#===============================
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "public_key" {}

variable "private_key" {}

variable "subnet_ips" {}

variable "security_group" {}

variable "subnets" {}
