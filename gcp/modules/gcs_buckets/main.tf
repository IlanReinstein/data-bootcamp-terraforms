locals {
  bucket_name = var.bucket_name
  location    = var.region
  project_id  = var.project_id
}

resource "google_storage_bucket" "capstone-bucket" {
  name          = local.bucket_name
  location      = local.location
  project       = local.project_id
}

// Service Account
resource "google_service_account" "storage_reader_writer" {
  account_id = "storagereadwrite"
  display_name = "Bucket reader writer"
}

// Service Account Key
resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.storage_reader_writer.name
}

// IAM Bindings
resource "google_storage_bucket_iam_binding" "bucket_creator" {
  bucket = "${google_storage_bucket.capstone_bucket.name}"
  role = "roles/storage.objectCreator"
  members = [
    join(":", ["serviceAccount", google_service_account.storage_reader_writer.email])
  ]
}

resource "google_storage_bucket_iam_binding" "bucket_reader" {
  bucket = "${google_storage_bucket.capstone_bucket.name}"
  role = "roles/storage.objectViewer"
  members = [
    join(":", ["serviceAccount", google_service_account.storage_reader_writer.email])
  ]
}
