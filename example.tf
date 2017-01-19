provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-central-1"
}

variable "vpc_cidr" {default = "10.0.0.0/16"}
variable "private_subnet_cidr" {default = "10.0.2.0/24"}
variable "short_name" {default = "gordey"}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags {
    Name = "${var.short_name}-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.private_subnet_cidr}"
  tags {
    Name = "${var.short_name}-private"
  }
}


resource "aws_instance" "another_one" {
  ami           = "ami-5b31fd34"
  subnet_id = "${aws_subnet.private.id}"
  instance_type = "t2.micro"
}
