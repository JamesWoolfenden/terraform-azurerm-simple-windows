resource "azurerm_network_security_group" "sato2" {
  # checkov:skip=CKV_AZURE_9: ADD REASON
  location            = local.location
  name                = var.networkSecurityGroupName
  resource_group_name = data.azurerm_resource_group.sato.name
  security_rule {
    name                       = "default-allow-3389"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
