variable "gcp_project" {
        default = "cloudworkproj"
    }
variable "credentials" {
        default = "cloudworkproj-2fe4b95b196d.json"
    }
# variable "vpc_names" {
#         description = "Create vpc networks with these names"
#         type = list
#         default = ["vpc-east", "vpc-west"]
#     }







variable "uw1" {
        default = "us-west1"
    }
variable "ue1" {
        default = "us-east1"
    }
variable "rule_name" {
        default = "service-ports"
    }
variable "web-uw1" {
        default = "web-us-west1"
    }
variable "app-uw1" {
        default = "app-us-west1"
    }

variable "db-uw1" {
        default = "db-us-west1"
    }
variable "web-ue1" {
        default = "web-us-east1"
    }
variable "app-ue1" {
        default = "app-us-east1"
    }

variable "db-ue1" {
        default = "db-us-east1"
    }
variable "subnet_uw1-w" {
        default = "10.1.1.0/24"
    }
variable "subnet_uw1-a" {
        default = "10.1.2.0/24"
    }
variable "subnet_uw1-d" {
        default = "10.1.3.0/24"
    }
variable "subnet_ue1-w" {
        default = "10.2.1.0/24"
    }
variable "subnet_ue1-a" {
        default = "10.2.2.0/24"
    }
variable "subnet_ue1-d" {
        default = "10.2.3.0/24"
    }
variable "ssh_public_key_filepath" {
  description = "Filepath for the ssh public key"
  type        = "string"
  default     = "dan.pub"
}

