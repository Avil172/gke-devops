terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket  = "tf-state-gke-devops"
    prefix  = "terraform/state"
  }
}

provider "google" {
  credentials = file("sa-key.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone != "" && var.zone != "***" ? var.zone : "us-central1-a"
}

resource "google_compute_instance" "practice_vm" {
  name         = "practice-vm"
  machine_type = "e2-micro"
  zone         = var.zone != "" && var.zone != "***" ? var.zone : "us-central1-a"
  tags         = ["dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."
  }
}

data "google_compute_instance" "practice_vm" {
  name = google_compute_instance.practice_vm.name
  zone = google_compute_instance.practice_vm.zone
}

output "instance_name" {
  value = google_compute_instance.practice_vm.name
}

output "instance_zone" {
  value = google_compute_instance.practice_vm.zone
}

output "instance_external_ip" {
  value = google_compute_instance.practice_vm.network_interface[0].access_config[0].nat_ip
}
