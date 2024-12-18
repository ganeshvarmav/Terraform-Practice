# Resource Group Name
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
