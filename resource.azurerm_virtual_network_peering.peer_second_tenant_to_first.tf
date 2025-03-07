resource "azurerm_virtual_network_peering" "peer_second_tenant_to_first" {
  name                      = "peer-second-to-first"
  resource_group_name       = azurerm_resource_group.c1_network_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_second_tenant.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_first_tenant.id
  use_remote_gateways       = false
}
