variable "region" {
  type        = string
  default     = "us-central1"
  description = "GCP Project ID region"
}

variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "creds" {}

variable "gke_username" {
  default     = ""
  description = "GKE username"
}

variable "gke_password" {
  default     = ""
  description = "GKE password"
}

variable "gke_num_nodes" {
  type        = number
  default     = 1
  description = "Number of gke nodes"
}
variable "remove_default_node_pool" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "machine_type" {
  type        = string
  default     = "n1-standard-1"
  description = "Machine Type for GKE Nodes"
}

variable "db_host" {
  type = string
  description = "DB Host"
}

variable "db_password" {
  type = string
  description = "DB Password"
}