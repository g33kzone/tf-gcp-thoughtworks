resource "google_project_service" "cloudsql_api" {
  project = var.project_id
  service = "sqladmin.googleapis.com"
}

resource "google_sql_database_instance" "postgresdb" {
  name             = var.db_instance
  database_version = "POSTGRES_11"
  region           = "us-central1"

  depends_on = [ google_project_service.cloudsql_api ]
}

resource "google_sql_user" "users" {
  name     = "me"
  instance = google_sql_database_instance.postgresdb.name
  host     = var.db_host
  password = var.db_password
}