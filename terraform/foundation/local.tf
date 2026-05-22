locals {
  rg_name = coalesce(
    try(azurerm_resource_group.rg[0].name, null),
    try(data.azurerm_resource_group.rg[0].name, null)
  )

  rg_location = coalesce(
    try(azurerm_resource_group.rg[0].location, null),
    try(data.azurerm_resource_group.rg[0].location, null)
  )
}

