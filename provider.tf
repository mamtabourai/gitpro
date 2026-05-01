terraform {
    backend "azurerm" {
        resource_group_name = "nanaji"
        storage_account_name = "storenanaji"
        container_name = "connanaji"
        key = "terraform.tfstate"
    }
    
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}

provider "azurerm" {
  features {}
}