output "name" {
  description = "Google cloud service bucket name."
  value       = google_storage_bucket.gcp_bucket.name
}

output "self_link" {
  description = "URI of the Google cloud service bucket."
  value       = google_storage_bucket.gcp_bucket.self_link
}

output "url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
  value       = google_storage_bucket.gcp_bucket.url
}