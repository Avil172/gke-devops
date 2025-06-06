variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "credentials" {
  description = "GCP Service Account Key"
  type        = string
  sensitive   = true
}