terraform {
  backend "azurerm" {
    use_azuread_auth     = true
    tenant_id            = "b1e8c46e-7523-43b8-9489-b23130c051c6"
    storage_account_name = "devstgacc167899"
    container_name       = "devmgmtcontainer"
    key                  = "dev.mgmt.terraform.tfstate"

  }
}