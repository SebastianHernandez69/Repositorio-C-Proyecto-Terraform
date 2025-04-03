resource "azurerm_storage_account" "sa" {
    name = "sa${var.project}${var.environment}exp0700"
    resource_group_name = azurerm_resource_group.ec-rg.name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"

    tags = var.tags
}

resource "azurerm_storage_queue" "qm"{
    name = "messagingsystem"
    storage_account_name = azurerm_storage_account.sa.name
}