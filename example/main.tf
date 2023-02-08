terraform {
  cloud {
    organization = "wavingduck"

    workspaces {
      name = "tfc-gcp-wi-demo"
    }
  }

  #    backend "gcs" {
  #      bucket = "tfc-wi-demo-81359-tfstate"
  #      prefix = "dev"
  #    }
}

provider "google" {
  project = "tfc-wi-demo-81359"
}

data "google_client_openid_userinfo" "userinfo" {}

data "google_project" "project" {}

resource "random_pet" "bucket" {}

resource "google_storage_bucket" "example" {
  name = "example-${random_pet.bucket.id}"

  force_destroy               = true
  location                    = "US"
  uniform_bucket_level_access = true
}

output "project" {
  value = data.google_project.project
}

output "userinfo" {
  value = data.google_client_openid_userinfo.userinfo
}

output "bucket" {
  value = google_storage_bucket.example
}
