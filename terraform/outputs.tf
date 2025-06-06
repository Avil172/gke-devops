output "instance_name" {
  description = "Name of the VM instance"
  value       = google_compute_instance.practice_vm.name
}

output "instance_zone" {
  description = "Zone of the VM instance"
  value       = google_compute_instance.practice_vm.zone
}

output "instance_external_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.practice_vm.network_interface[0].access_config[0].nat_ip
}
