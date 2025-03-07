resource "azurerm_virtual_network" "vnet_datacenter" {
  name                = "datacenter-vnet"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  address_space       = ["172.23.0.0/16"]
} 