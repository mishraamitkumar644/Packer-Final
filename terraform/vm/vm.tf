data "azurerm_shared_image_version" "latest" {

  name = "latest"

  image_name = "ubuntu-nginx"

  gallery_name = var.gallery_name

  resource_group_name = var.resource_group_name
}

resource "azurerm_linux_virtual_machine" "vm" {

  name = var.vm_name

  resource_group_name = var.resource_group_name

  location = var.location

  size = "Standard_D2s_v5"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  admin_ssh_key {

    username = "azureuser"

    public_key = file("~/.ssh/id_rsa.pub")
  }

  source_image_id = data.azurerm_shared_image_version.latest.id

  os_disk {

    caching = "ReadWrite"

    storage_account_type = "Standard_LRS"
  }
}