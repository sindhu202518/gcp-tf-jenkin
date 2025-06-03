provider "google" {
  project = "auto-project1-461104"
  region  = "asia-south1"
}
resource "google_compute_instance" "vm_instance" {
  name         = "my-vm01"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
