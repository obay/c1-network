resource "azurerm_virtual_network_peering" "peer_second_tenant_spoke3" {
  name                      = "peer-second-spoke3"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_second_tenant.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_spoke3.id
  allow_forwarded_traffic   = false
  allow_gateway_transit     = false
}
