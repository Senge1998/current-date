variable "cluster_name" {
  description = "The name of the GKE cluster"
  type = string
}

variable "region" {
  description = "The region where the GKE cluster will be created"
  type = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the GKE cluster"
  type = number
}

variable "network_name" {
  description = "The name of the VPC network to deploy the GKE cluster"
  type = string
}

variable "subnet_name" {
  description = "The name of the subnet to deploy the GKE cluster"
  type = string
}

variable "master_authorized_networks" {
  description = "The authorized network permitted to access the master"
  type = string
}

variable "machine_type" {
  description = "The machine type to be used for the nodes in the GKE cluster"
  type = string
}
