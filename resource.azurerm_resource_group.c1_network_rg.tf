resource "azurerm_resource_group" "c1_network_rg" {
  name     = var.c1_network_rg_name
  location = var.c1_network_rg_location
}

variable "c1_network_rg_name" {
  type    = string
  default = "c1-network-rg"
}

variable "c1_network_rg_location" {
  type    = string
  default = "westus2"
}
