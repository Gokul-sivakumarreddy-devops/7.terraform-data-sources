data "aws_ami" "centos8" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

   filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "aws-linux-2" {
  owners = ["137112412989"]  # we can also give amazon
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]   # * means, whatever version change, we will have no impact
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

   filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "default" {
  default = true
}