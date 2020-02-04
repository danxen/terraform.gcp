
variable "vpc_names" {
  description = "Create vpc networks with these names"
  type        = list(string)
  default     = ["vpc-east", "vpc-west"]
}

variable "ue1_name1" {
        default = "shared"
    }

variable "ue1_name2" {
        default = "prod"
    }

variable "ue1_name3" {
        default = "dev"
    }

variable "uw1_name1" {
        default = "test"
    }

variable "ue1_cidr1" {
        default = "10.1.1.0/24"
    }

variable "ue1_cidr2" {
        default = "10.1.2.0/24"
    }

variable "ue1_cidr3" {
        default = "10.1.3.0/24"
    }

variable "uw1_cidr1" {
        default = "10.2.1.0/24"
    }


variable "ue1" {
        default = "us-east1"
    }


variable "uw1" {
        default = "us-west1"
    }

variable "ue1_rule_name" {
        default = "east-ports"
    }

variable "uw1_rule_name" {
        default = "west-ports"
    }