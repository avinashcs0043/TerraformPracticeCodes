
resource "random_string" "stg_suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "Dev_backend_rg" {
  name     = var.dev-bknd-rg.name
  location = var.dep.dev.location

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_storage_account" "dev_bkd_mgmt_stg" {
  name = "devstg${random_string.stg_suffix.result}"
  location = azurerm_resource_group.Dev_backend_rg.location
  resource_group_name = azurerm_resource_group.Dev_backend_rg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}