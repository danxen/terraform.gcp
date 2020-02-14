
// VPC firewall configuration east
resource "google_compute_firewall" "east-rules" {
  name    = "${var.ue1_rule_name}"
  network       = "${var.vpc_east}"
  depends_on    = ["google_compute_network.vpc_network_east"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22",
                "80",
                "443"]

  }

  source_ranges = ["0.0.0.0/0"]
}





// VPC firewall configuration west
resource "google_compute_firewall" "west-rules" {
  name    = "${var.uw1_rule_name}"
  network       = "${var.vpc_west}"
  depends_on    = ["google_compute_network.vpc_network_east"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22",
                "80",
                "443"]

  }

  source_ranges = ["0.0.0.0/0"]
}
