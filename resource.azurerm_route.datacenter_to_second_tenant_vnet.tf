resource "azurerm_route" "datacenter_to_second_tenant_vnet" {
  name                = "datacenter-to-second-tenant"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  route_table_name    = azurerm_route_table.rt_datacenter.name
  address_prefix      = "10.105.0.0/20"
  next_hop_type       = "VirtualNetworkGateway"
}
