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
  features {}  # This is required in newer versions of the provider
  subscription_id = "${env.ARM_SUBSCRIPTION_ID}"
  client_id       = "${env.ARM_CLIENT_ID}"
  client_secret   = "${env.ARM_CLIENT_SECRET}"
  tenant_id       = "${env.ARM_TENANT_ID}"
}

# Create a Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
