terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

}

resource "azurerm_resource_group" "test" {
  name     = "test"
  location = "eastus"
}