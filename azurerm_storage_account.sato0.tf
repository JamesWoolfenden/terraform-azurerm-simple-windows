resource "azurerm_storage_account" "sato0" {
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  location                      = local.location
  name                          = local.storageAccountName
  account_kind                  = "Storage"
  resource_group_name           = data.azurerm_resource_group.sato.name
  public_network_access_enabled = false
  logging {
    delete                = true
    read                  = true
    write                 = true
    version               = "1.0"
    retention_policy_days = 10
    hour_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
    minute_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
  }
  min_tls_version = "TLS1_2"
}
