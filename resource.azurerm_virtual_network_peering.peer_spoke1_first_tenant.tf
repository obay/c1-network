resource "azurerm_virtual_network_peering" "peer_spoke1_first_tenant" {
  name                      = "peer-spoke1-first"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_spoke1.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_first_tenant.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}
