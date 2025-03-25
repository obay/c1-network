resource "azurerm_virtual_network_gateway_connection" "datacenter_to_first_tenant" {
  name                       = "datacenter-to-first-tenant-vgw-conn"
  resource_group_name        = azurerm_resource_group.c1_network_rg.name
  location                   = azurerm_resource_group.c1_network_rg.location
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vpn_gateway_datacenter.id
  local_network_gateway_id   = azurerm_local_network_gateway.first_tenant_local_gateway.id
  shared_key                 = "xK9#mP2$vL5nR8@jQ4" # Strong 18-character PSK
}
