resource "azurerm_virtual_network" "vnet_spoke3" {
  name                = "spoke3-vnet"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  address_space       = ["10.105.32.0/20"]
}
