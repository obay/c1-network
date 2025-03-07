resource "azurerm_virtual_network_gateway" "vpn_gateway_datacenter" {
  name                = "datacenter-vgw"
  resource_group_name = azurerm_resource_group.c1_network_rg.name
  location            = azurerm_resource_group.c1_network_rg.location
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "VpnGw1"
  enable_bgp          = true

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.vpn_gateway_ip_datacenter.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gateway_subnet_datacenter.id
  }
}
