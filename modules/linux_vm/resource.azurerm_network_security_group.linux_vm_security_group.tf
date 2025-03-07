resource "azurerm_network_security_group" "linux_vm_security_group" {
  name                = "${var.linux_vm_name}-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name
}
