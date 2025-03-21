variable "project_prefix" {
  description = "Prefijo para nombrar recursos"
  type        = string
}

variable "location" {
  description = "Región de Azure para los recursos"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}
# Variables para máquina Ubuntu
variable "ubuntu_vm_size" {
  description = "Tamaño de la máquina virtual Ubuntu"
  type        = string
  default     = "Standard_B2s"
}

variable "nic_id" {
  description = "ID de la interfaz de red"
  type        = string
}

variable "ubuntu_admin_username" {
  description = "Nombre de usuario administrador para Ubuntu"
  type        = string
}

variable "ubuntu_admin_password" {
  description = "Clave de usuario administrador para Ubuntu"
  type        = string
}