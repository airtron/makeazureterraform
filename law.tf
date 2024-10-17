resource "random_string" "law_random" {
  length  = 14
  lower   = true
  numeric = false
  special = false
  upper   = false
}

resource "azurerm_log_analytics_workspace" "law" {
  name                = random_string.law_random.result
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}