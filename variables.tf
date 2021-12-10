variable "bucket_name" {
  description = "Google Cloud Storage (GCS) bucket Name."
  type        = string
}

variable "gcp_project_id" {
  description = "GCS Project ID."
  type        = string
}

variable "gcp_region" {
  description = "GCS Location."
  type        = string
  default     = "EU"
}

variable "force_destroy" {
  description = "Delete all objects when deleting bucket."
  type        = bool
  default     = false
}

variable "admin" {
  description = "IAM-style members who will be granted roles/storage.objectAdmin on all buckets."
  type        = list(string)
  default     = []
}

variable "storage-class" {
  description = "The Storage class of the GCS bucket. Supported Values - STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE"
  type        = string
  default     = "STANDARD"
}

variable "labels" {
  description = "Labels to assign on the GCS bucket."
  type        = map
}

variable "enable_versioning" {
  description = "Enable GCS Bucket versioning."
  type        = bool
  default     = false
}

variable "credential_link" {}