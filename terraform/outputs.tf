output "vm_name" {
  value       = data.google_compute_instance.vm_data.name
  description = "The name of the created VM"
}

output "vm_external_ip" {
  value       = data.google_compute_instance.vm_data.network_interface[0].access_config[0].nat_ip
  description = "The external IP of the VM"
}

output "vm_status" {
  value       = data.google_compute_instance.vm_data.status
  description = "The status of the VM"
}