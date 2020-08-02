terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion"
    region = "southamerica-east1-a"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "bera-testdrive"
  region = "southamerica-east1-a"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
  location  = "southamerica-east1"
}
