resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  lifecycle { ignore_changes = ["tags"]}
}

resource "azurerm_resource_group" "rg_2" {
  name     = "beginner2"
  location = var.location
  lifecycle { ignore_changes = ["tags"]}
}