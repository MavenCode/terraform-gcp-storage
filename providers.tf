terraform {
  required_version = ">= 0.13"
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.53, < 5.0"
    }
  }
}

provider "google" {
  project     = var.gcp_project_id
  region      = var.gcs_region
  credentials = var.credential_link
}