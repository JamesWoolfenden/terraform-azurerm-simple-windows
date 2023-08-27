resource "azurerm_network_interface" "sato4" {
  location            = local.location
  name                = var.nicName
  resource_group_name = data.azurerm_resource_group.sato.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_virtual_network.sato3.subnet
    private_ip_address_allocation = "Dynamic"
  }
  depends_on = [azurerm_public_ip.sato1, azurerm_virtual_network.sato3, ]
}
