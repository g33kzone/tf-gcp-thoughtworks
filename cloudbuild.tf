resource "google_project_service" "cloudbuild_api" {
  project = var.project_id
  service = "cloudbuild.googleapis.com"
}

resource "google_cloudbuild_trigger" "cloudbuild_go_palindrome" {
  provider = "google-beta"
  name     = "cloudbuild-go-palindrome"

  filename = var.yaml_filename

  github {
    owner = var.repo_owner
    name  = var.repo_name
    push {
      branch = var.repo_branch
    }
  }

  depends_on = [google_project_service.cloudbuild_api]
}