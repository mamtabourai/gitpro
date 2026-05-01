resource "azurerm_resource_group" "nana" {
  name     = "nanaji"
  location = "central india"
}

resource "azurerm_storage_account" "storenana" {
  name                     = "storenanaji"
  resource_group_name      = azurerm_resource_group.nana.name
  location                 = azurerm_resource_group.nana.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
}

resource "azurerm_storage_container" "connana" {
  name                  = "connanaji"
  storage_account_id    = azurerm_storage_account.storenana.id
  container_access_type = "blob"
}