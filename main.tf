terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Ensure you're using a compatible version
    }
  }

  required_version = ">= 1.3.0"
}

provider "azurerm" {

  # Authentication from environment variables
  subscription_id = var.arm_subscription_id
  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  tenant_id       = var.arm_tenant_id
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US"  # Specify the location (e.g., East US, West Europe)
}

# Define variables to be passed in from GitHub Secrets
variable "arm_subscription_id" {}
variable "arm_client_id" {}
variable "arm_client_secret" {}
variable "arm_tenant_id" {}

