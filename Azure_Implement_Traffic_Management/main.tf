terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
   backend "remote" {
    organization = "emine"

    workspaces {
      name = "TerraformAzure"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}