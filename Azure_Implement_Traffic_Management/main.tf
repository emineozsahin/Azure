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
  default     = "East US"
}

variable "arm_vm_admin_password" {
  description = "Passwords for the root user in VMs."
  default     = "SUper.123-" # This should be hidden and passed as variable, doing this just for training purpose
}

variable "arm_frontend_instances" {
  description = "Number of front instances"
  default     = 2
}