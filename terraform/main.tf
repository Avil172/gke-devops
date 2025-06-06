provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = local_file.gcp_credentials.filename
}

resource "local_file" "gcp_credentials" {
  filename = "${path.module}/credentials.json"
  content  = var.credentials
}

resource "google_compute_instance" "default" {
  name         = "minimal-vm-${random_id.instance_suffix.hex}"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  scheduling {
    preemptible       = true
    automatic_restart = false
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "random_id" "instance_suffix" {
  byte_length = 4
}

data "google_compute_instance" "vm_data" {
  name = google_compute_instance.default.name
  zone = var.zone
  depends_on = [google_compute_instance.default]
}