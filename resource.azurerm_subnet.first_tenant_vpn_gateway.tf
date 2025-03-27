resource "azurerm_subnet" "first_tenant_vpn_gateway" {
  name                 = "GatewaySubnet" # This name is required for VPN Gateway
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_first_tenant.name
  address_prefixes     = ["10.70.1.0/24"] # Using space from the second half of the /20
}
