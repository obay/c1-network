output "public_ip_address" {
  value = azurerm_public_ip.linux_vm_public_ip.ip_address
}
