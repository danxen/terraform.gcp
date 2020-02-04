//Create web vm instance in us-west-1
resource "google_compute_instance" "nginx-vm" {
  name         = "nginx-vm"
  machine_type = "n1-standard-1"
  zone         = "us-west1-a"




  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-1910"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "${var.vpc_name}"
    subnetwork = "${google_compute_subnetwork.subnet-a}"


    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "dan:${file(var.ssh_public_key_filepath)}"
    startup-script = <<script
        apt-get -y update
        apt-get -y install nginx
        service nginx start
        sudo apt-get install iputils-ping
        script
    

  }

}

//Create app vm instance in us-west-1
resource "google_compute_instance" "drone-vm" {
  name         = "drone-vm"
  machine_type = "f1-micro"
  zone         = "us-west1-b"


  tags = ["drone"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${var.vpc_name}"
    subnetwork = "${var.app-uw1}-subnet"


    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "dan:${file(var.ssh_public_key_filepath)}"
    startup-script = <<script
        apt-get -y update
        sudo apt-get install iputils-ping
        script
  }
  
}


# //Create db vm instance in us-east-1
resource "google_compute_instance" "db-vm-use1" {
  name         = "db-vm-use1"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"


  tags = ["db"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-1910"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "${var.vpc_name}"
    subnetwork = "${var.db-ue1}-subnet"


    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "dan:${file(var.ssh_public_key_filepath)}"
    startup-script = <<script
        apt-get -y update
        sudo apt-get install iputils-ping
        script
  }
  
}
