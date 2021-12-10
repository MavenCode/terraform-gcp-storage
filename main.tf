resource "google_storage_bucket" "gcp_bucket" {
  project       = var.gcp_project_id
  name          = var.bucket_name
  location      = var.gcs_region
  force_destroy = var.force_destroy
  storage_class = var.storage-class
  versioning    = var.enable_versioning
}

resource "google_storage_bucket_iam_binding" "storage_admin" {
    bucket   = google_storage_bucket.gcp_bucket.name
    role     = "roles/storage.admin"
    members  =  var.admin
}