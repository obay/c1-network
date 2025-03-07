resource "azurerm_subnet_route_table_association" "datacenter_subnet_assoc" {
  subnet_id      = azurerm_subnet.subnet_datacenter.id
  route_table_id = azurerm_route_table.rt_datacenter.id
} 