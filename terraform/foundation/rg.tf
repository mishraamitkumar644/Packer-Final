# resource group
resource "azurerm_resource_group" "rg" {
 count = var.create_rg ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

