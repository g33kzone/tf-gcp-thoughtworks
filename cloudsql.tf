resource "google_sql_database_instance" "postgresdb" {
  name             = "db-palindrome"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    tier = var.machine_type
  }
}

resource "google_sql_user" "users" {
  name     = "me"
  instance = google_sql_database_instance.postgresdb.name
  host     = var.db_host
  password = var.db_password
}