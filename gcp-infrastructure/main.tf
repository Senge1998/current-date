provider "google" {
  project = var.project_id
  region = var.region
}

module "network" {
  source = "./modules/network"
  vpc_name = var.vpc_name
  subnet_name = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region = var.region
  router_name = var.router_name
  nat_name = var.nat_name
  nat_ip = var.nat_ip
}

module "gke" {
  source = "./modules/gke"
  cluster_name = var.cluster_name
  region = var.region
  initial_node_count = var.initial_node_count
  network_name = module.network.network_name
  subnet_name = module.network.subnet_name
  machine_type = var.machine_type
  master_authorized_networks   = var.master_authorized_networks
}

module "firewall" {
  source = "./modules/firewall"
  firewall_name = var.firewall_name
  network_name = module.network.network_name
  ports = ["6443", "10250"]
  source_ranges = ["0.0.0.0/0"]
}