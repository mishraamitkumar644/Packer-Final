resource "azurerm_shared_image_gallery" "sig" {

  name                = var.gallery_name
  resource_group_name = azurerm_resource_group.rg[0].name
  location            = azurerm_resource_group.rg[0].location
}
