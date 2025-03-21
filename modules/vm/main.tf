resource "azurerm_linux_virtual_machine" "vm_ubuntu" {
  name                            = "${var.project_prefix}-ubu"
  computer_name                   = "ubuntu"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  size                            = var.ubuntu_vm_size
  admin_username                  = var.ubuntu_admin_username
  admin_password                  = var.ubuntu_admin_password
  disable_password_authentication = false
  provision_vm_agent              = true
  network_interface_ids = [
    var.nic_id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}
