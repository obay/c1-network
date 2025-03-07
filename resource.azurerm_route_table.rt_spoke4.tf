resource "azurerm_route_table" "rt_spoke4" {
  name                = "rt-spoke4"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
}
