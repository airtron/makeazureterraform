resource "azurerm_eventhub_namespace" "ehns" {
  name                = var.eventhub_namespace_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"
  capacity            = 1
  auto_inflate_enabled = true
  maximum_throughput_units = 2

  tags = {
    environment = "sbx"
  }
}