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
        Name = "RoboShop"
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

variable "instances" {
    # default = {
        # mongodb = "t3.micro"
        # redis = "t3.micro"
        # mysql = "t3.small"
        # rabbitmq = "t3.micro"
    # }
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
    default = "Z06261683JSSW0UX3XRF2"
}

variable "domain_name" {
    default = "dineshkonda.site"
}