resource "azurerm_network_interface_security_group_association" "linux_vm_security_group_association" {
  network_interface_id      = azurerm_network_interface.linux_vm_nic.id
  network_security_group_id = azurerm_network_security_group.linux_vm_security_group.id
}
