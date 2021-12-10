resource "google_storage_bucket" "gcp_bucket" {
  project       = var.gcp_project_id
  name          = var.bucket_name
  location      = var.gcs_region
  force_destroy = var.force_destroy
  storage_class = var.storage-class
  versioning    = var.enable_versioning
}