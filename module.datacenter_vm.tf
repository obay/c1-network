module "datacenter_vm" {
  source                  = "./modules/linux_vm"
  location                = azurerm_resource_group.c1_network_rg.location
  resource_group_name     = azurerm_resource_group.c1_network_rg.name
  linux_vm_name           = "datacenter-vm"
  linux_vm_size           = "Standard_B1s"
  linux_vm_admin_username = var.linux_vm_admin_username
  subnet_id               = azurerm_subnet.datacenter.id
}

variable "linux_vm_admin_username" {
  type        = string
  description = "The username for the datacenter VM"
  default     = "obay"
}
