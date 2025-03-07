resource "azurerm_route" "first_tenant_to_datacenter" {
  name                = "first-tenant-to-datacenter"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  route_table_name    = azurerm_route_table.rt_first_tenant.name
  address_prefix      = "172.23.0.0/16"
  next_hop_type       = "VirtualNetworkGateway"
}
