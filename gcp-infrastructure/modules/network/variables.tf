variable "vpc_name" {
    description = "The VPC network name"
    type = string
}

variable "subnet_name" {
  description = "The subnet name"
  type = string
}

variable "ip_cidr_range" {
  description = "The ip cidr range for the subnetwork"
  type = string
}

variable "region" {
  description = "The default region for the infrastructure"
  type = string
}

variable "router_name" {
  description = "The name of the router"
  type = string
}

variable "nat_name" {
  description = "The network address translator name"
  type = string
}

variable "nat_ip" {
  description = "The NAT IP"
  type = string
}