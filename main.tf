resource "google_storage_bucket" "my_bucket" {
  name          = "tt-githubdemo-bucket-${timestamp()}"
lifecycle {
    create_before_destroy = true
  project       = "auto-project1-461104"
  location      = "asia-south1"
}
#
