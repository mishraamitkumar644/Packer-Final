locals {
  rg_name = var.create_rg ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg.name

  rg_location = var.create_rg ? azurerm_resource_group.rg[0].location : data.azurerm_resource_group.rg.location
}
