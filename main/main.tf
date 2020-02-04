
// Configure the Google Cloud provider
provider "google" {
 credentials    = "${file("${var.credentials}")}"
 project        = "${var.gcp_project}" 
 region        = "us-west1"
}

// terraform module to create vpc network
module "vpc" {
  source = "../modules/vpc" 
  # name   = "network"

}

# // terraform module to create compute resources
# module "compute" {
#   source = "../modules/compute" 
 

# }
