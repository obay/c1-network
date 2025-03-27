resource "azurerm_subnet_route_table_association" "spoke3_subnet_assoc" {
  subnet_id      = azurerm_subnet.spoke3.id
  route_table_id = azurerm_route_table.rt_spoke3.id
}
