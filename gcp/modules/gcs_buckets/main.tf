locals {
  bucket_name = "${var.bucket_name}-${local.project_id}"
  location    = var.region != "" ? var.region : data.google_client_config.current.region
  project_id  = var.project_id != "" ? var.project_id : data.google_client_config.current.project
}

resource "google_storage_bucket" "capstone-bucket" {
  name          = local.bucket_name
  location      = local.location
  project       = local.project_id
}
