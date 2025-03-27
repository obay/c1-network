resource "azurerm_subnet" "spoke3" {
  name                 = "subnet-spoke3"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_spoke3.name
  address_prefixes     = ["10.105.32.0/20"]
}
