
resource "random_string" "stg_suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "dev_hub_rg" {
  name     = var.dev-hub-rg
  location = var.dev-deploy-location

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_virtual_network" "dev_hub_vnet" {
  name = var.dev_hub_vnet_name
  location = azurerm_resource_group.dev_hub_rg.location
  address_space = ["10.0.0.0/22"]
  resource_group_name = azurerm_resource_group.dev_hub_rg.name
}