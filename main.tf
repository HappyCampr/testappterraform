provider "google" {
  project     = var.project
  region      = var.region
  credentials = var.credentials != "" ? var.credentials : null
}


resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  project  = var.project
  location = var.region

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}
