locals {
  region_id   = var.region
  project_id  = var.project_id
}

variable "gcp_bucket_names" {
  type = list
  default = ["capstone-bucket", "raw", "stage"]
}

resource "google_storage_bucket" "rugged_buckets" {
  count         = length(var.gcp_bucket_names)
  bucket        = var.gcp_bucket_names[count.index]
  region        = "us-central1"
  force_destroy = true
}

// Service Account
resource "google_service_account" "airflow" {
  account_id = "airflow"
  project_id = local.project_id
  region = local.region_id
  display_name = "Bucket reader writer"
}

// Service Account Key
resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.airflow.name
}
