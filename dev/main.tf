resource "azurerm_resource_group" "rg" {
  name     = "devrg0018581"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa" {
  name                     = "devsa0018581"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "ca1" {
  name                  = "devcont00858"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

