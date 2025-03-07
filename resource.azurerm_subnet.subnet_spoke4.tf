resource "azurerm_subnet" "subnet_spoke4" {
  name                 = "subnet-spoke4"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_spoke4.name
  address_prefixes     = ["10.105.16.0/20"]
}
