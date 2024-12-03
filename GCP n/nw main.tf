provider "google" {
  project     = "your-project-id"
  region      = "us-central1"
}

resource "google_compute_network" "default_network" {
  name                    = "my-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default_subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = google_compute_network.default_network.region
  network       = google_compute_network.default_network.self_link
}

#provider "google" {
  project     = "your-project-id"
  region      = "us-central1"
}

resource "google_compute_network" "default_network" {
  name                    = "my-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default_subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = google_compute_network.default_network.region
  network       = google_compute_network.default_network.self_link
}

