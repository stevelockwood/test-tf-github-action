
resource "random_id" "random_name" {
  byte_length = 8
}

resource "google_storage_bucket" "test-bucket" {
  name          = "test-bucket-${random_id.random_name.hex}"
  location      = "us-east1"
  storage_class = "STANDARD"



}

