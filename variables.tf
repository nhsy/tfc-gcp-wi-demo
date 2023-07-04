variable "tfc_gcp_audience" {
  type        = string
  default     = ""
  description = "The audience value to use in run identity tokens if the default audience value is not desired."
}

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with GCP"
}

variable "tfc_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  default     = "Default Project"
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type        = string
  description = "The name of the workspace that you'd like to create and connect to GCP"
  default     = "tfc-gcp-wi-demo"
}

variable "gcp_project_id" {
  type        = string
  description = "The ID for your GCP project"
}

variable "github_repo" {
  description = ""
  type        = string
}

variable "github_oauth_token" {
  description = ""
  default     = ""
  type        = string
}
