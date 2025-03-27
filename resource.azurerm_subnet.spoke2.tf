resource "azurerm_subnet" "spoke2" {
  name                 = "subnet-spoke2"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_spoke2.name
  address_prefixes     = ["10.70.16.0/20"]
} 