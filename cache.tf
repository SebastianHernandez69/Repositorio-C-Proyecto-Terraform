resource "azurerm_redis_cache" "redis" {
  name                = "${var.project}-${var.environment}-expertos-redis"
  location            = var.location
  resource_group_name = azurerm_resource_group.ec-rg.name
  capacity            = 1
  family              = "C"
  sku_name            = "Basic"

  tags                = var.tags
}