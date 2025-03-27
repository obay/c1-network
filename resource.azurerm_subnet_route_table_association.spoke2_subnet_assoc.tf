resource "azurerm_subnet_route_table_association" "spoke2_subnet_assoc" {
  subnet_id      = azurerm_subnet.spoke2.id
  route_table_id = azurerm_route_table.rt_spoke2.id
}
