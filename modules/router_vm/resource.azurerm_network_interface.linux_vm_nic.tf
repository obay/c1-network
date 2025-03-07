resource "azurerm_network_interface" "linux_vm_nic" {
  name                  = "${var.linux_vm_name}-nic"
  location              = var.location
  resource_group_name   = var.resource_group_name
  ip_forwarding_enabled = true

  ip_configuration {
    name                          = "${var.linux_vm_name}-nic-ip-configuration"
    public_ip_address_id          = azurerm_public_ip.linux_vm_public_ip.id
    private_ip_address_allocation = "Static"
    subnet_id                     = var.subnet_id
    private_ip_address            = var.private_nic_ip_address
  }
}
