terraform{
 required_providers {
  gcp = {
  source = "hashicorp/gcp"
   version = "~. 1.0.4"

provider "google" {
  credentials = ""
  project = "{{YOUR GCP PROJECT}}"
  region  = "us-central1"  # Optional, default region
  zone    = "us-central1-c" # Optional, default zone

resource "google_compute_instance" "my_instance" {
  name         = "my-vm-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
 network_interface {
    network   
 = "default"
    access_config   
 {
    }
  }
}
}
