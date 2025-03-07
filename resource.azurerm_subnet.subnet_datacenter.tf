resource "azurerm_subnet" "subnet_datacenter" {
  name                 = "subnet-datacenter"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_datacenter.name
  address_prefixes     = ["172.23.0.0/24"]
}
