variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-central-1"
}
variable "vpc_cidr" {default = "10.0.0.0/16"}
variable "private_subnet_cidr" {default = "10.0.2.0/24"}
variable "short_name" {default = "gordey"}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}


variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "1"
}

variable "admin_cidr_ingress" {
  description = "CIDR to allow tcp/22 ingress to EC2 instance"
  default = "10.0.0.0/16"
}
