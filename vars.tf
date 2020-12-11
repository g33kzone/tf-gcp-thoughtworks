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
  default     = 3
  description = "Number of gke nodes"
}
variable "remove_default_node_pool" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}