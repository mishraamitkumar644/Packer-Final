packer {

  required_plugins {

    azure = {

      source  = "github.com/hashicorp/azure"

      version = ">= 2.0.0"
    }
  }
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

source "azure-arm" "ubuntu" {

  use_azure_cli_auth = true

  subscription_id = var.subscription_id

  tenant_id = var.tenant_id

  os_type = "Linux"

  image_publisher = "Canonical"

  image_offer = "0001-com-ubuntu-server-jammy"

  image_sku = "22_04-lts-gen2"

  image_version = "latest"

  location = "canadacentral"

  vm_size = "Standard_D2s_v5"

  communicator = "ssh"

  ssh_username = "azureuser"

  shared_image_gallery_destination {

    subscription = var.subscription_id

    resource_group = "rg-canada-prod"

    gallery_name = "canadaProdSIG"

    image_name = "ubuntu-nginx"

    image_version = "1.0.${formatdate("DDhhmm", timestamp())}"

    replication_regions = [
      "canadacentral"
    ]
  }
}

build {

  sources = [
    "source.azure-arm.ubuntu"
  ]

  provisioner "shell" {

    script = "scripts/install.sh"
  }
}