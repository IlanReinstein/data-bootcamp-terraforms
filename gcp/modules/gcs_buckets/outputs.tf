
output "raw_bucket_id" {
  value = google_storage_bucket.raw-bucket.id
}
output "raw_name" {
  value       = google_storage_bucket.raw-bucket.name
  description = "The name of bucket."
}
output "stage_bucket_id" {
  value = google_storage_bucket.stage-bucket.id
}
output "stage_name" {
  value       = google_storage_bucket.stage-bucket.name
  description = "The name of bucket."
}
