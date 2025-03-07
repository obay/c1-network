resource "azurerm_virtual_network_peering" "peer_spoke4_second_tenant" {
  name                      = "peer-spoke4-second"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_spoke4.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_second_tenant.id
  use_remote_gateways       = false
}
