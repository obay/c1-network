resource "azurerm_public_ip" "vpn_gateway_ip_first_tenant" {
  name                = "pip-vpn-gateway-first-tenant"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
} 