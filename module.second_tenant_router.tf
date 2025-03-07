module "second_tenant_router" {
  source                  = "./modules/router_vm"
  location                = azurerm_resource_group.c1_network_rg.location
  resource_group_name     = azurerm_resource_group.c1_network_rg.name
  linux_vm_name           = "second-tenant-router-vm"
  linux_vm_size           = "Standard_B1s"
  linux_vm_admin_username = "obay"
  subnet_id               = azurerm_subnet.subnet_second_tenant.id
  private_nic_ip_address  = "10.105.0.4"
}
