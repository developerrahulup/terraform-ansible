provider "aws" {
  access_key = "#"
  secret_key = "#"
  region     = "ap-south-1"
}

resource "aws_instance" "centos_instance" {
  ami           = "" #ami name
  instance_type = "t2.micro"
  key_name      = ""  #keypair
  tags = {
    Name = "c8.local"
  }
}

resource "aws_instance" "ubuntu_instance" {
  ami           = ""   ##ami-name
  instance_type = "t2.micro"
  key_name      = "" key-pair
  tags = {
    Name = "u21.local"
  }
}

output "centos_ip" {
  value = aws_instance.centos_instance.public_ip
}

output "ubuntu_ip" {
  value = aws_instance.ubuntu_instance.public_ip
}
