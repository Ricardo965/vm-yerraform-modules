output "ubuntu_vm_name" {
  description = "Nombre de la máquina virtual Ubuntu"
  value       = azurerm_linux_virtual_machine.vm_ubuntu.name
}