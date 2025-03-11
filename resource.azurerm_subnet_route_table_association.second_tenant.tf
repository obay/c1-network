resource "azurerm_subnet_route_table_association" "second_tenant" {
  subnet_id      = azurerm_subnet.subnet_second_tenant.id
  route_table_id = azurerm_route_table.rt_second_tenant.id
} 