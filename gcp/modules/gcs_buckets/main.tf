locals {
  bucket_name = "${var.bucket_name}-${local.project_id}"
  location    = var.region
  project_id  = var.project_id
}

resource "google_storage_bucket" "capstone-bucket" {
  name          = local.bucket_name
  location      = local.location
  project       = local.project_id
}
