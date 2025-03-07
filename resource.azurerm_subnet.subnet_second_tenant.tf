resource "azurerm_subnet" "subnet_second_tenant" {
  name                 = "subnet-second-tenant"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_second_tenant.name
  address_prefixes     = ["10.105.0.0/20"]
} 