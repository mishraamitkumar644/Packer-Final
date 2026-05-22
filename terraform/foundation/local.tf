
locals {
  rg_name = (
    length(azurerm_resource_group.rg) > 0 ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg.name
  )

  rg_location = (
    length(azurerm_resource_group.rg) > 0 ? azurerm_resource_group.rg[0].location : data.azurerm_resource_group.rg.location
  )
}


