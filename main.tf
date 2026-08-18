provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0912f71e06545ad88"
  instance_type = "t3.micro"

  key_name = "New-Data-Class-Account"

  tags = {
    Name = "github-actions-demo"
  }
}

output "ec2_public_ip" {
  value = aws_instance.demo.public_ip
}
