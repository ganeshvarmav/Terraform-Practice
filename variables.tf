variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

# Location
variable "location" {
  description = "The Azure region where the Resource Group will be created"
  type        = string
  default     = "East US" # You can change the default value if needed
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure Subscription ID"
  type        = string
}

variable "ARM_CLIENT_ID" {
  description = "Azure Client ID"
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = "Azure Client Secret"
  type        = string
}

variable "ARM_TENANT_ID" {
  description = "Azure Tenant ID"
  type        = string
}

