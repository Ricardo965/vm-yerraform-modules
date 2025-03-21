

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0"
    }
  }
}

provider "azurerm" {
  features {}


  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "net" {
  source              = "./modules/net"
  project_prefix      = var.project_prefix
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

module "vm" {
  source                = "./modules/vm"
  project_prefix        = var.project_prefix
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  nic_id                = module.net.nic_id
  ubuntu_admin_username = var.ubuntu_admin_username
  ubuntu_admin_password = var.ubuntu_admin_password
}
