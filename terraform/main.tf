resource "google_compute_instance" "default" {
  name         = "minimal-vm-${random_id.suffix.hex}"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {} // Ephemeral IP
  }

  scheduling {
    preemptible       = true
    automatic_restart = false
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}