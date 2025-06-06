terraform {
  backend "gcs" {
    bucket = "tf-state-gke-devops"  # You'll need to create this bucket manually first
    prefix = "terraform/state"
  }
}