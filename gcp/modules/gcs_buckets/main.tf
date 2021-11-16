locals {
  raw_name = var.raw_name
  stage_name = var.stage_name
  location    = var.region
  project_id  = var.project_id
}

resource "google_storage_bucket" "raw-bucket" {
  name          = local.raw_name
  location      = local.location
  project       = local.project_id
  force_destroy  = true
}

resource "google_storage_bucket" "stage-bucket" {
  name          = local.stage_name
  location      = local.location
  project       = local.project_id
  force_destroy  = true
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
