output "instance_name" {
  description = "The name of the compute instance"
  value       = google_compute_instance.practice_vm.name
}

output "instance_zone" {
  description = "The zone of the compute instance"
  value       = google_compute_instance.practice_vm.zone
}

output "instance_self_link" {
  description = "The self-link of the compute instance"
  value       = data.google_compute_instance.practice_vm.self_link
}

output "instance_external_ip" {
  description = "The external IP address of the instance"
  value       = data.google_compute_instance.practice_vm.network_interface[0].access_config[0].nat_ip
}
