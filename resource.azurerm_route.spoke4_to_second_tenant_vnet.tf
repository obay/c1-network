resource "azurerm_route" "spoke4_to_second_tenant_vnet" {
  name                   = "spoke4-to-second-tenant-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_spoke4.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.105.0.4"
}
