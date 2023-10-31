terraform {
  backend "gcs" {
    bucket  = "roidtc-augtest-u902-tf-state"
    prefix  = "terraform/state-test"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.2.0"
    }
  }
}

provider "google" {
  project= "roidtc-augtest-u902"
  region = "us-central1"
  zone   = "us-central1-b"
}
