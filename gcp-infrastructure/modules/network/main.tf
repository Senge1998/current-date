# This section creates the VPC network
resource "google_compute_network" "vpc_network" {
  name        = var.vpc_name
  description = "GKE VPC"
}

# This section creates the subnetwork which resides within the VPC
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

# The NAT IP address resource
resource "google_compute_address" "nat_ip" {
  name   = var.nat_ip
  region = var.region
}

# The main router which the NAT will use
resource "google_compute_router" "router" {
  name    = var.router_name
  region  = var.region
  network = google_compute_network.vpc_network.id
}

# The NAT configuration for the router
resource "google_compute_router_nat" "nat" {
  name                          = var.nat_name
  router                        = google_compute_router.router.name
  region                        = var.region
  nat_ips                       = [google_compute_address.nat_ip.self_link]
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

# Output the network name
output "network_name" {
  value = google_compute_network.vpc_network.name
}

# Output the subnet name
output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}
