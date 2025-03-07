resource "azurerm_subnet" "subnet_first_tenant_hub" {
  name                 = "subnet-first-tenant-hub"
  resource_group_name  = azurerm_resource_group.c1_network_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_first_tenant.name
  address_prefixes     = ["10.70.0.0/24"]
}
