output "bucket_id" {
  value = google_storage_bucket.capstone-bucket.id
}
output "name" {
  value       = google_storage_bucket.capstone-bucket.name
  description = "The name of bucket."
}
