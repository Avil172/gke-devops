provider "google" {
  project     = var.project_id
  credentials = var.credentials
  region      = var.region
}

resource "google_compute_instance" "default" {
  name         = "minimal-vm"
  machine_type = "e2-micro"  # Minimal cost machine type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Free tier eligible image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  # Ensure VM is preemptible to minimize cost
  scheduling {
    preemptible = true
    automatic_restart = false
  }
}

data "google_compute_instance" "vm_data" {
  name = google_compute_instance.default.name
  zone = var.zone
}