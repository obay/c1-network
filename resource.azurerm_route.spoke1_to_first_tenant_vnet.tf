resource "azurerm_route" "spoke1_to_first_tenant_vnet" {
  name                   = "spoke1-to-first-tenant-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_spoke1.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.70.0.4"
}
