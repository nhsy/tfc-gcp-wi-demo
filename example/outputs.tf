output "project" {
  value = data.google_project.current
}

output "userinfo" {
  value = data.google_client_openid_userinfo.userinfo
}

output "bucket" {
  value = google_storage_bucket.example
}
