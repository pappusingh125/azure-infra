terraform {
  required_version = ">= 1.15.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "saurav-rg"
    storage_account_name = "saurav0231231"
    container_name       = "ajaystatefile"
    key                  = "pappu.tfstate"
  }
}
provider "azurerm" {
  features {}
}