variable "project_id" {
  description = "The GCP project ID"
  type = string
}

variable "region" {
  description = "The GCP region"
  type = string
  default = "us-central1"
}

variable "vpc_name" {
  description = "The name of the VPC network"
  type = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type = string
}

variable "ip_cidr_range" {
  description = "The CIDR range of the subnet"
  type = string
}

variable "router_name" {
  description = "The name of the NAT router"
  type = string
}

variable "nat_name" {
  description = "The name of the NAT gateway"
  type = string
}

variable "nat_ip" {
  description = "The name of the NAT IP"
  type = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type = string
}

variable "machine_type" {
  description = "The machine type for GKE nodes"
  type = string
  default = "e2-medium"
}

variable "firewall_name" {
  description = "The name of the firewall rule"
  type = string
}

variable "initial_node_count" {
  description = "The initial node count"
  default = 1
}

variable "master_authorized_networks" {
  description = "CIDR block for accessing the Kubernetes master"
  type        = string
}