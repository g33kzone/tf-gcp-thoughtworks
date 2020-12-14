terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>3.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.creds
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = var.creds
}