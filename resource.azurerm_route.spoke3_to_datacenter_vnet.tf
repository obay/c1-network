resource "azurerm_route" "spoke3_to_datacenter_vnet" {
  name                   = "spoke3-to-datacenter-vnet"
  resource_group_name    = azurerm_resource_group.c1_network_rg.name
  route_table_name       = azurerm_route_table.rt_first_tenant_vpn_gateway.name
  address_prefix         = "10.105.32.0/20"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.105.0.4"
}
