output "ubuntu_vm_name" {
  description = "Nombre de la máquina virtual Ubuntu"
  value       = module.vm.ubuntu_vm_name
}

output "ubuntu_public_ip" {
  description = "Dirección IP pública de la máquina virtual Ubuntu"
  value       = module.net.ubuntu_public_ip
}