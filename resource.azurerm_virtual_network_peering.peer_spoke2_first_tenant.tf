resource "azurerm_virtual_network_peering" "peer_spoke2_first_tenant" {
  name                      = "peer-spoke2-first"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_spoke2.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_first_tenant.id
  use_remote_gateways       = false
}
