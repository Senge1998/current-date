resource "google_compute_firewall" "gke_firewall" {
  name    = var.firewall_name
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = var.ports
  }

  source_ranges = var.source_ranges
}