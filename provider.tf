terraform {
  required_providers {
    aws = {
      source  = "hashicorp/google"
      version = "~>3.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.creds
}

# variable "creds" {}
# provider "google" {
#   credentials = var.creds
#   project     = var.project_id
# }