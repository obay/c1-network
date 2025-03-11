resource "azurerm_subnet_route_table_association" "first_tenant_hub" {
  subnet_id      = azurerm_subnet.subnet_first_tenant_hub.id
  route_table_id = azurerm_route_table.rt_first_tenant.id
} 