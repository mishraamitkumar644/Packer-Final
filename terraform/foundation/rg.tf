# If RG already exists
data "azurerm_resource_group" "existing" {
  count = var.resource_group_name ? 0 : 1

  name = var.resource_group_name
}
  
resource "azurerm_resource_group" "rg" {
 count = var.resource_group_name ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}
