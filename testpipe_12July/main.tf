resource "azurerm_resource_group" "resource_group" {
  name     = "rg_development"
  location = "West Europe"
}
resource "azurerm_storage_account" "storage" {
  name                     = "developtg112"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"

}
