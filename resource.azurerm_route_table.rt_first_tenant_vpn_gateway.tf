resource "azurerm_route_table" "rt_first_tenant_vpn_gateway" {
  name                = "rt-first-tenant-vpn-gateway"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
}
