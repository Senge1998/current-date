resource "google_container_cluster" "primary" {
  name = var.cluster_name
  location = var.region
  initial_node_count = var.initial_node_count
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  network = var.network_name
  subnetwork = var.subnet_name
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = var.master_authorized_networks
    }
  }
  remove_default_node_pool = false
  node_config {
    machine_type = var.machine_type
    oauth_scopes = [ "https://www.googleapis.com/auth/cloud-platform" ]
  }
  monitoring_service = "monitoring.googleapis.com/kubernetes"
  vertical_pod_autoscaling {
    enabled = true
  }
}