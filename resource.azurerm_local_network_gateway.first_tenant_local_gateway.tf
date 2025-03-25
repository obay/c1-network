resource "azurerm_local_network_gateway" "first_tenant_local_gateway" {
  name                = "first-tenant-local-gateway"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  gateway_address     = azurerm_public_ip.vpn_gateway_ip_first_tenant.ip_address

  address_space = [
    "10.70.0.0/20", # First tenant VNet address space
    "10.70.32.0/20",
    "10.70.16.0/20",
    "10.105.0.0/20",
    "10.105.32.0/20",
    "10.105.16.0/20"
  ]
}
