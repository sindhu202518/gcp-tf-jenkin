resource "google_storage_bucket" "my_bucket" {
  name          = "tt-githubdemo-bucket-002"
  project       = "auto-project1"
  location      = "asia-south1-a"
  public_access_prevention = "enforced"
}
#
