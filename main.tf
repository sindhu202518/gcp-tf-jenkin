resource "google_storage_bucket" "my_bucket" {
  name          = "tt-githubdemo-bucket-002"
  Project       = "auto-project1"
  location      = "asia-south1-a"
  force-destroy  = true
  public_access_prevention = "enforced"
}
#
