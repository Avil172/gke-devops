terraform {
  backend "gcs" {
    bucket = "tf-state-gke-devops"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "google" {
  credentials = file("sa-key.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "practice_vm" {
  name         = "practice-vm"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  tags = ["dev"]
}

data "google_compute_instance" "practice_vm" {
  name = google_compute_instance.practice_vm.name
  zone = var.zone
}
