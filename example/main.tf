data "google_client_openid_userinfo" "userinfo" {}

data "google_project" "current" {}

resource "random_pet" "bucket" {}

resource "google_storage_bucket" "example" {
  name = "example-${random_pet.bucket.id}"

  force_destroy               = true
  location                    = "US"
  uniform_bucket_level_access = true
}
