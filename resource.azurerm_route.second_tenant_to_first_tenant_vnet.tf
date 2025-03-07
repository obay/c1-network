resource "azurerm_route" "second_tenant_to_first_tenant_vnet" {
  name                   = "second-tenant-to-first-tenant-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_second_tenant.name
  address_prefix         = "10.70.0.0/16"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.70.0.4"
}
