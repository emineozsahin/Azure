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

# Resouce Group
resource "azurerm_resource_group" "terraform_sample" {
    name     = "traffic"
    location = "${var.arm_region}"
}

# Variables
variable "arm_region" {
  description = "The Azure region to create things in."
  default     = "Canada Central"
}

variable "arm_frontend_instances" {
  description = "Number of front instances"
  default     = 2
}

