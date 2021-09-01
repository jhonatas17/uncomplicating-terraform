provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

module "ec2" {
  source                  = "git@github.com:gomex/uncomplicating-terraform.git?ref=v0.2"
  app_name                = "test01"
  instance_type           = "t3.micro"
  count                   = 2
}

output "ip_address_ec2" {
  value = module.ec2[*].ip_address
}
