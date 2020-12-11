
resource "google_project_service" "kubernetes" {
  project = var.project_id
  service = "container.googleapis.com"
}

resource "google_container_cluster" "kubernetes" {
  name                     = "${var.project_id}-gke"
  location                 = var.region
  initial_node_count       = var.gke_num_nodes
  remove_default_node_pool = var.remove_default_node_pool

  network = google_compute_network.gke_vpc.name
  subnetwork = google_compute_subnetwork.gke_subnet.name

  # network    = google_compute_network.vpc.name
  # subnetwork = google_compute_subnetwork.subnet.name

  master_auth {
    username = var.gke_username
    password = var.gke_password

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  depends_on = [google_project_service.kubernetes]
}