
// Create vpc for the east
resource "google_compute_network" "vpc_network_east" {
 name                    = "${var.vpc_east}"
 auto_create_subnetworks = "false"
 routing_mode            = "GLOBAL"
}

// Create vpc for the east
resource "google_compute_network" "vpc_network_west" {
 name                    = "${var.vpc_west}"
 auto_create_subnetworks = "false"
 routing_mode            = "GLOBAL"
}

// Create Subnet shared services for the east 
resource "google_compute_subnetwork" "shared-services" {
 name          = "${var.ue1_name1}"
 ip_cidr_range = "${var.ue1_cidr1}"
 network       = "${var.vpc_east}"
 region        = "${var.ue1}"
 depends_on    = ["google_compute_network.vpc_network_east"]
}


// Create Subnet prod for the east 
resource "google_compute_subnetwork" "prod" {
 name          = "${var.ue1_name2}"
 ip_cidr_range = "${var.ue1_cidr2}"
 network       = "${var.vpc_east}"
 region        = "${var.ue1}"
 depends_on    = ["google_compute_network.vpc_network_east"]
}

// Create Subnet dev for the east 
resource "google_compute_subnetwork" "dev" {
 name          = "${var.ue1_name3}"
 ip_cidr_range = "${var.ue1_cidr3}"
 network       = "${var.vpc_east}"
 region        = "${var.ue1}"
 depends_on    = ["google_compute_network.vpc_network_east"]
}

// Create Subnet test for the west 
resource "google_compute_subnetwork" "test" {
 name          = "${var.uw1_name1}"
 ip_cidr_range = "${var.uw1_cidr1}"
 network       = "${var.vpc_west}"
 region        = "${var.uw1}"
 depends_on    = ["google_compute_network.vpc_network_west"]
}


output "dev_name" {
  value = google_compute_subnetwork.dev.name
}


output "vpc_east" {
  value = google_compute_network.vpc_network_east.name
}
