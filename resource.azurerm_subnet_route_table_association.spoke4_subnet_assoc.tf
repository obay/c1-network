resource "azurerm_subnet_route_table_association" "spoke4_subnet_assoc" {
  subnet_id      = azurerm_subnet.spoke4.id
  route_table_id = azurerm_route_table.rt_spoke4.id
} 