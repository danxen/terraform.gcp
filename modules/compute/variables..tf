variable "subnetwork" {
  default = ""
}

variable "network" {
  default = ""
}
variable "ue1_name3" {
        default = "dev"
    }


variable "vpc_east" {
  default     = "vpc-east"
}

variable "ssh_public_key_filepath" {
  description = "Filepath for the ssh public key"
  type        = "string"
  default     = "dan.pub"
}