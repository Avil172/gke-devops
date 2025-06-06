terraform {
  backend "gcs" {
    bucket = "tf-state-gke-devops"  # Create this bucket manually first
    prefix = "terraform/state"
  }
}