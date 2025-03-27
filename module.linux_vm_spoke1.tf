module "linux_vm_spoke1" {
  source                  = "./modules/linux_vm"
  location                = azurerm_resource_group.c1_network_rg.location
  resource_group_name     = azurerm_resource_group.c1_network_rg.name
  linux_vm_name           = "spoke1-vm"
  linux_vm_size           = "Standard_B1s"
  linux_vm_admin_username = "obay"
  subnet_id               = azurerm_subnet.spoke1.id
}
