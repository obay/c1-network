resource "azurerm_route_table" "rt_spoke3" {
  name                = "rt-spoke3"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
}
