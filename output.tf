output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "example" {
  value = data.azurerm_resources.example
}