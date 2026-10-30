terraform {
  required_version = ">=1.6"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }



  }
}

provider "azurerm" {
  features {

  }
}

resource "random_string" "stg_suffix" {
  length  = 6
  upper   = false
  special = false
}

