data "tfe_organization" "default" {
  name = var.tfc_organization_name
}

data "tfe_project" "default" {
  name         = var.tfc_project_name
  organization = var.tfc_organization_name
}

data "google_project" "project" {}