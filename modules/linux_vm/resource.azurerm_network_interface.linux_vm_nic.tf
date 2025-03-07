resource "azurerm_network_interface" "linux_vm_nic" {
  name                = "${var.linux_vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "${var.linux_vm_name}-nic-ip-configuration"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id
  }
}
