variable "subscription_id" {
  type = string
}

variable "location" {
  type = string
}

variable "create_rg" {
  type    = bool
  default = false
}

variable "resource_group_name" {
  type = string
}

variable "gallery_name" {
  type = string
}
