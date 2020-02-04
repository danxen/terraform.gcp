
resource "google_compute_network_peering" "peer-east-to-west" {
 name          = "east-west-peering"
 network       = "projects/cloudworkproj/global/networks/vpc-east"
 peer_network  = "projects/cloudworkproj/global/networks/vpc-west"
 
}

resource "google_compute_network_peering" "peer-west-to-east" {
  name         = "west-east-peering"
 network       = "projects/cloudworkproj/global/networks/vpc-west"
 peer_network  = "projects/cloudworkproj/global/networks/vpc-east"

}
