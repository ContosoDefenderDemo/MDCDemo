data "azurerm_resource_group" "terraformstorage" {
  name = "DevOpsSecurity"
}

resource "azurerm_storage_account" "terraformaccount1" {
  name                     = "devopssecurity1"
  resource_group_name      = data.azurerm_resource_group.terraformstorage.name
  location                 = "Central US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  enable_https_traffic_only = true
  public_network_access_enabled = true

}
