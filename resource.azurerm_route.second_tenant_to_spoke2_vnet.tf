resource "azurerm_route" "second_tenant_to_spoke2_vnet" {
  name                   = "second-tenant-to-spoke2-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_second_tenant.name
  address_prefix         = "10.70.16.0/20"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.70.0.4"
}
