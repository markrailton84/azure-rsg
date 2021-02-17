#silly change
variable "location" {
  type        = string
  description = "Location of Resource Group"
  default = "UK South"
  }

resource "azurerm_resource_group" "resource_group" {
 name = "randomstringrsg"
 location = var.location
}

output "resource_group_id" {
  description =  "Resource Group ID"
  value       =  azurerm_resource_group.resource_group.id
}

output "resource_group_name" {
  description =  "Resource Group ID"
  value       =  azurerm_resource_group.resource_group.name
}