variable "subnet_id" {
  description = "The subnet ID to launch the EC2 in"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use"
  type        = string
}

variable "ec2_name" {
  description = "Name tag for EC2 instance"
  type        = string
}
