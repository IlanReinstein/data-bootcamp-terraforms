resource "google_storage_bucket" "cloud_bucket" {
  name  = var.bucket_name
  region = var.region
}
