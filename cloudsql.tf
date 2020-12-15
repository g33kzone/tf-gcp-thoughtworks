resource "google_project_service" "cloudsql_api" {
  project = var.project_id
  service = "sqladmin.googleapis.com"
}

resource "random_id" "sql_db_id" {
  byte_length = 6
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = "thoughtworks-devops-${random_id.sql_db_id.hex}"
  database_version = "POSTGRES_11"
  region           = var.region

  deletion_protection = false

  settings {
    tier = "db-f1-micro"
  }

  depends_on = [google_project_service.cloudsql_api]
}

resource "google_sql_database" "postgres_db" {
  name     = var.db_name
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "users" {
  name     = var.db_user
  instance = google_sql_database_instance.postgres_instance.name
  password = var.db_password
}