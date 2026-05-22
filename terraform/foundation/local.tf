locals {
  rg_name = var.create_rg ? azurerm_resource_group.rg.name : var.resource_group_name
}
