resource "azurerm_subnet" "gateway_subnet_datacenter" {
  name                 = "GatewaySubnet" # This name is required for VPN Gateway
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_datacenter.name
  address_prefixes     = ["172.23.1.0/24"] # Dedicated subnet for gateway
} 