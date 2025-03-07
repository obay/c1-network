module "first_tenant_router" {
  source                  = "./modules/router_vm"
  location                = azurerm_resource_group.c1_network_rg.location
  resource_group_name     = azurerm_resource_group.c1_network_rg.name
  linux_vm_name           = "first-tenant-router-vm"
  linux_vm_size           = "Standard_B1s"
  linux_vm_admin_username = "obay"
  subnet_id               = azurerm_subnet.subnet_first_tenant_hub.id
  private_nic_ip_address  = "10.70.0.4"
}
