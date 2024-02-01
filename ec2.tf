resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t2.micro"
  subnet_id = "subnet-0285fed2480af3f37"
  
tags = {
    Name = "data-source"
  }
}
