resource "azurerm_virtual_network_peering" "peer_spoke3_second_tenant" {
  name                      = "peer-spoke3-second"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_spoke3.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_second_tenant.id
  allow_forwarded_traffic   = true
  use_remote_gateways       = false
}
