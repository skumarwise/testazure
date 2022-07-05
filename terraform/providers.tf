terraform {

  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "TerraformStateRG"
    storage_account_name = "maximusterraformstate"
    container_name       = "tfstatemaximus"
    key                  = "tfstatemaximus.tfstate"
  }
  
}

provider "azurerm" {
  features {}
}
