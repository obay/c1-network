resource "azurerm_linux_virtual_machine" "linux_vm" {
  name                            = var.linux_vm_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  network_interface_ids           = [azurerm_network_interface.linux_vm_nic.id]
  size                            = var.linux_vm_size
  admin_username                  = var.linux_vm_admin_username
  disable_password_authentication = true
  admin_ssh_key {
    username   = var.linux_vm_admin_username
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    name                 = "${var.linux_vm_name}-os-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
