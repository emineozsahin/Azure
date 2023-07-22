# Provider
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

# Variables
variable "loc" {
  description = "The Azure region to create things in."
  default     = "Canada Central"
}


# Resouce Group
resource "azurerm_resource_group" "terraform_sample" {
    name     = "az104-06"
    location = "${var.loc}"
}





