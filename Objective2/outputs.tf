output "vm_name" {
  value = azurerm_linux_virtual_machine.precedence.name
}

output "vm_size" {
  value = azurerm_linux_virtual_machine.precedence.size
}

output "vm_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "admin_password_used" {
  value     = var.admin_password
  sensitive = true
}
