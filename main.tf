resource "google_storage_bucket" "my_bucket" {
  name     = "tt-githubdemo-bucket-${formatdate("YYYYMMDD-HHmmss", timestamp())}"
  project  = "auto-project1-461104"
  location = "asia-south1"

  lifecycle {
    create_before_destroy = true
  }
}
