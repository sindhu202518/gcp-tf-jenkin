variable "bucket_names" {
  type    = list(string)
  default = ["tt-githubdemo-bucket-001", "tt-githubdemo-bucket-002"]
}

resource "google_storage_bucket" "my_bucket" {
  for_each = toset(var.bucket_names)
  name     = each.value
  project  = "auto-project1-461104"
  location = "asia-south1"

  lifecycle {
    create_before_destroy = true
  }
}
