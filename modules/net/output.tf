output "ubuntu_public_ip" {
  description = "Dirección IP pública de la máquina virtual Ubuntu"
  value       = azurerm_public_ip.pip.ip_address
}

output "nic_id" {
  description = "ID de la interfaz de red"
  value = azurerm_network_interface.nic.id
}