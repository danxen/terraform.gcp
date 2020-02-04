
// Create vpc for the east and the west using loops
resource "google_compute_network" "vpc_networks" {
 name                    = "${var.vpc_names[count.index]}"
 count                   = length(var.vpc_names)
 auto_create_subnetworks = "false"
 routing_mode            = "GLOBAL"
}


// Create Subnet shared services for the east 
resource "google_compute_subnetwork" "shared-services" {
 name          = "${var.ue1_name1}"
 ip_cidr_range = "${var.ue1_cidr1}"
 network       = "vpc-east"
 region        = "${var.ue1}"
}


// Create Subnet prod for the east 
resource "google_compute_subnetwork" "prod" {
 name          = "${var.ue1_name2}"
 ip_cidr_range = "${var.ue1_cidr2}"
 network       = "vpc-east"
 region        = "${var.ue1}"
}

// Create Subnet dev for the east 
resource "google_compute_subnetwork" "dev" {
 name          = "${var.ue1_name3}"
 ip_cidr_range = "${var.ue1_cidr3}"
 network       = "vpc-east"
 region        = "${var.ue1}"
}

// Create Subnet test for the west 
resource "google_compute_subnetwork" "test" {
 name          = "${var.uw1_name1}"
 ip_cidr_range = "${var.uw1_cidr1}"
 network       = "vpc-west"
 region        = "${var.uw1}"
}




