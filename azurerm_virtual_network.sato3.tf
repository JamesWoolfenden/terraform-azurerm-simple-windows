resource "azurerm_virtual_network" "sato3" {
  location            = local.location
  name                = var.virtualNetworkName
  resource_group_name = data.azurerm_resource_group.sato.name
  address_space       = [var.addressPrefix]
  subnet {
    name           = var.subnetName
    address_prefix = var.subnetPrefix
    security_group = azurerm_network_security_group.sato2
  }
  depends_on = [azurerm_network_security_group.sato2, ]
}
