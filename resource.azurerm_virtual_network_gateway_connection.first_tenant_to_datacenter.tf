resource "azurerm_virtual_network_gateway_connection" "first_tenant_to_datacenter" {
  name                            = "first-tenant-to-datacenter-vgw-conn"
  resource_group_name             = azurerm_resource_group.c1_network_rg.name
  location                        = azurerm_resource_group.c1_network_rg.location
  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.vpn_gateway_first_tenant.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.vpn_gateway_datacenter.id
  shared_key                      = "xK9#mP2$vL5nR8@jQ4" # Strong 18-character PSK
}
