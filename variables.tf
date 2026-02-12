variable "project" {
  description = "GCP project id"
  type        = string
}


variable "region" {
  description = "Bucket region (multi-region like 'US' or region like 'us-central1')"
  type        = string
  default     = "US"
}

variable "bucket_name" {
  description = "Globally unique bucket name"
  type        = string
}

variable "credentials" {
  description = "Service account JSON (optional; prefer using Spacelift workspace connection or environment variables)"
  type        = string
  default     = ""
  sensitive   = true
}

variable "testing" {
  description = can delete later
}