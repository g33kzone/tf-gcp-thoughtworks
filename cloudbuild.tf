resource "google_project_service" "cloudbuild_api" {
  project = var.project_id
  service = "cloudbuild.googleapis.com"
}

resource "google_cloudbuild_trigger" "cloudbuild_go_palindrome" {
  provider = "google-beta"
  name     = "cloudbuild-go-palindrome"

  filename = "cloudbuild.yaml"

  github {
    owner       = "g33kzone"
    name        = "go-gin-palindrome"
    push {
      branch = "main"
    }
  }

  depends_on = [google_project_service.cloudbuild_api]
}