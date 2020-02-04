
// VPC firewall configuration east
resource "google_compute_firewall" "east-rules" {
  name    = "${var.ue1_rule_name}"
  network       = "vpc-east"

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
  network       = "vpc-west"

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
