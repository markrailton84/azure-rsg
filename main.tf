variable "resource_group_name" {
   type = string
   description = "Name of Resource Group"
   }

variable "location" {
  type        = string
  description = "Location of Resource Group"
  }

resource "azurerm_resource_group" "resource_group" {
 name = var.resource_group_name
 location = var.location
}

output "resource_group_id" {
  description =  "Resource Group ID"
  value       =  azurerm_resource_group.resource_group.id
}