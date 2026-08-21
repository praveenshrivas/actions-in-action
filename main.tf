provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0ac7b260cf76d8865"
  instance_type = "t3.micro"

  key_name = "New-Data-Class-Account"

  tags = {
    Name = "github-actions-demo"
  }
}

output "ec2_public_ip" {
  value = aws_instance.demo.public_ip
}
