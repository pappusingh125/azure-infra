terraform {
  required_version = ">= 1.15.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pps-prod-rg"
    storage_account_name = "ppssttoorraaggee"
    container_name       = "ppscontainer"
    key                  = "Dev.tfstate"
  }
}
provider "azurerm" {
  features {}
}