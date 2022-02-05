#-----compute/main.tf-----
#==========================
provider "aws" {
  region = var.region
}

#Get Linux AMI ID using SSM Parameter endpoint
#==============================================
data "aws_ssm_parameter" "webserver-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

#Create and bootstrap webserver
#===================================
resource "aws_instance" "webserver" {
  instance_type               = "t2.micro"
  ami                         = data.aws_ssm_parameter.webserver-ami.value
  tags = {
    Name = "webserver_tf"
  }
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.security_group]
  subnet_id                   = var.subnets
  key_name                    = var.key_name
}