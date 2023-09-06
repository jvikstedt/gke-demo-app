variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "gke_nu" {
  default     = 2
  description = "number of gke nodes"
}

# GKE cluster
data "google_container_engine_versions" "gke_version" {
  location = var.region
  version_prefix = "1.27."
}

resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = "europe-west1-b"

  initial_node_count = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  node_config {
    disk_size_gb = 50
  }
}
