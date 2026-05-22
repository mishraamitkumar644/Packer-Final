resource "azurerm_shared_image" "ubuntu_nginx" {

  name                = "ubuntu-nginx"

  gallery_name        = var.gallery_name

  resource_group_name = var.resource_group_name

  location            = var.location

  os_type             = "Linux"

  hyper_v_generation  = "V2"

  identifier {

    publisher = "mycompany"

    offer     = "ubuntu"

    sku       = "nginx"
  }
}