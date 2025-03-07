resource "azurerm_public_ip" "linux_vm_public_ip" {
  name                = "${var.linux_vm_name}-public-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
