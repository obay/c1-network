resource "azurerm_subnet_route_table_association" "spoke1_subnet_assoc" {
  subnet_id      = azurerm_subnet.subnet_spoke1.id
  route_table_id = azurerm_route_table.rt_spoke1.id
}
