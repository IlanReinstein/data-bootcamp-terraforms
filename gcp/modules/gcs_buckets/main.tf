locals {
  bucket_name = var.bucket_name
  location    = var.region
  project_id  = var.project_id
}

resource "google_storage_bucket" "capstone-bucket" {
  name          = local.bucket_name
  location      = local.location
  project       = local.project_id
  force_destroy  = true
}

// Service Account
resource "google_service_account" "airflow" {
  account_id = "airflow"
  project_id = local.project_id
  region = local.region_id
  display_name = "Bucket reader writer"
}
