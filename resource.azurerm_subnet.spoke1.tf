resource "azurerm_subnet" "spoke1" {
  name                 = "subnet-spoke1"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_spoke1.name
  address_prefixes     = ["10.70.32.0/20"]
}
