
resource "google_project_service" "container_api" {
  project = var.project_id
  service = "container.googleapis.com"
}

resource "google_container_cluster" "k8s_cluster" {
  name                     = "${var.project_id}-gke"
  location                 = var.region
  initial_node_count       = 1
  remove_default_node_pool = var.remove_default_node_pool

  network    = google_compute_network.gke_vpc.name
  subnetwork = google_compute_subnetwork.gke_subnet.name

  master_auth {
    username = var.gke_username
    password = var.gke_password

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  depends_on = [google_project_service.container_api]
}

resource "google_container_node_pool" "node_pool" {
  name       = "${google_container_cluster.k8s_cluster.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.k8s_cluster.name
  node_count = var.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.project_id
    }

    machine_type = var.machine_type
    tags         = ["gke-node", "${var.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }

}