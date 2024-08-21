provider "google" {
  # Configuration options
  project = "manifest-stream-424502-s1"
  region  = "us-central1"
  zone    = "us-central1-a"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.30.0"
    }
  }
}


resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}