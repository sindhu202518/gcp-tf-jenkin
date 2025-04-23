resource "google_storage_bucket" "my_bucket" {
  name          = "tt-githubdemo-bucket-002"
  Project       = "My First Project"
  location      = "US"
  force-destroy  = true
  public_access_prevention = "enforced"
}
#
