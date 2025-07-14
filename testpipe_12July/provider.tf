terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "def6c89e-a855-4b2a-a2d3-a1bc15337302"
    resource_group_name  = "rg-classic"
    storage_account_name = "stgclassicpipe"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "def6c89e-a855-4b2a-a2d3-a1bc15337302"
}