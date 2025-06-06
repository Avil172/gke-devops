variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone (will default if invalid)"
  type        = string
  default     = "us-central1-a"
}
