# terraform settings block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}
# provider block
provider "aws" {
  profile = "default"
  region = "us-east-1"  
  
}

#Resource block
resource "aws_instance" "demo" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  
}