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
  project = var.gcp_project_id
  region  = var.gcp_region
  access_key = var.access_key
  secret_key = var.secret_key
}