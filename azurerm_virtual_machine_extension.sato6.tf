resource "azurerm_virtual_machine_extension" "sato6" {
  name                       = format("%%s/%%s", var.vmName, var.extensionName)
  publisher                  = var.extensionPublisher
  type                       = var.extensionName
  type_handler_version       = var.extensionVersion
  auto_upgrade_minor_version = true
  automatic_upgrade_enabled  = true
  settings                   = var.settings
  virtual_machine_id         = azurerm_virtual_machine.sato5
  depends_on                 = [azurerm_virtual_machine.sato5, ]
}
