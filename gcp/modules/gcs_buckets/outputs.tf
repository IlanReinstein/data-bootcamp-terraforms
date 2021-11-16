
output "raw_bucket_id" {
  value = google_storage_bucket.raw.id
}
output "raw_name" {
  value       = google_storage_bucket.raw.name
  description = "The name of bucket."
}
output "stage_bucket_id" {
  value = google_storage_bucket.stage.id
}
output "stage_name" {
  value       = google_storage_bucket.stage.name
  description = "The name of bucket."
}
