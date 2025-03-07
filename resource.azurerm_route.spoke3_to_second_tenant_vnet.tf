resource "azurerm_route" "spoke3_to_second_tenant_vnet" {
  name                   = "spoke3-to-second-tenant-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_spoke3.name
  address_prefix         = "172.23.0.0/16"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.105.0.4"
}
