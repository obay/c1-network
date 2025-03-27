resource "azurerm_subnet_route_table_association" "first_tenant_vpn_gateway" {
  subnet_id      = azurerm_subnet.first_tenant_vpn_gateway.id
  route_table_id = azurerm_route_table.rt_first_tenant_vpn_gateway.id
}
