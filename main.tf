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
}

# Create a Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
