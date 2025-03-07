resource "azurerm_virtual_network_peering" "peer_first_tenant_spoke1" {
  name                      = "peer-first-spoke1"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_first_tenant.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_spoke1.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}
