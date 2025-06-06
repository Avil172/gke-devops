output "vm_name" {
  value = data.google_compute_instance.vm_data.name
}

output "vm_status" {
  value = data.google_compute_instance.vm_data.status
}

output "vm_external_ip" {
  value = data.google_compute_instance.vm_data.network_interface[0].access_config[0].nat_ip
}