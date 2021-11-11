locals {
  region_id   = var.region
  project_id  = var.project_id
}

variable "gcp_bucket_names" {
  type = list(string)
  default = ["capstone-bucket", "raw", "stage"]
}

resource "google_storage_bucket" "project-buckets" {
  name = var.gcp_bucket_names[count.index]
  count         = length(var.gcp_bucket_names)
  bucket       = var.gcp_bucket_names[count.index]
  force_destroy = true
}

// Service Account
resource "google_service_account" "airflow" {
  account_id = "airflow"
  display_name = "Bucket reader writer"
}

// Service Account Key
resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.airflow.name
}
