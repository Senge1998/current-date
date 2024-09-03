variable "firewall_name" {
  description = "The name of the firewall rule"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "ports" {
  description = "Allowed ports"
  type        = list(string)
}

variable "source_ranges" {
  description = "Source IP ranges allowed"
  type        = list(string)
}
