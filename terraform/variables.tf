variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "credentials" {
  description = "GCP service account key"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}