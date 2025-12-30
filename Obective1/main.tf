resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "${var.resource_group_name}-vm"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  size                = var.vm_size
  admin_username      = var.admin_username

  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCexample"
  }

  network_interface_ids = []

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
