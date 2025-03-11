resource "azurerm_route" "first_tenant_to_spoke4_vnet" {
  name                   = "first-tenant-to-spoke4-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_first_tenant.name
  address_prefix         = "10.105.16.0/20"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.105.0.4"
}
