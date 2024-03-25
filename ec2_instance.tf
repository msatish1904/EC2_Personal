provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = var.vpc_security_group_ids

  tags = {
    Name = "ExampleInstance"
  }
}
