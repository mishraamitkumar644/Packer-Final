resource "azurerm_shared_image_gallery" "sig" {

  name                = var.gallery_name
  resource_group_name = local.rg_name
  location            = var.location
}
