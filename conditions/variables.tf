variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI id of joindevops RHEL 9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "HelloWorld"
        Purpose = "Variables-demo"
    } 
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "allowing all instances ports from internet "
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow_all"
    }
}

variable "environment" {
    default = "prod"
}