resource "azurerm_local_network_gateway" "datacenter_local_gateway" {
  name                = "datacenter-local-gateway"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  gateway_address     = azurerm_public_ip.vpn_gateway_ip_datacenter.ip_address

  address_space = [
    "172.23.0.0/16" # Datacenter VNet address space
  ]
} 