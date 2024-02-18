terraform {
  required_providers {
    aws = {
      version = "~>4.0"
    }
  }
}


provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAU6GDUQ6D5BTBHQPL"
  secret_key = "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"
}




resource "aws_instance" "first-instance" {
  ami           = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"
  key_name = "client-key"
  tags= {
   name = "first-instance-from-terraform"
}
}


resource "aws_instance" "second-instance" {
  ami           = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"
  key_name = "client-key"
  tags= {
   name = "second-instance-from-terraform"
}
}

