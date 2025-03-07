resource "azurerm_virtual_network_peering" "peer_second_tenant_spoke4" {
  name                      = "peer-second-spoke4"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_second_tenant.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_spoke4.id
  allow_forwarded_traffic   = false
  allow_gateway_transit     = false
}
