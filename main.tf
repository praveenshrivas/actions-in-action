provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0912f71e06545ad88"
  instance_type = "t3.micro"

  tags = {
    Name = "github-actions-demo"
  }
}
