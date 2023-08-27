resource "azurerm_public_ip" "sato1" {
  location            = local.location
  name                = var.publicIpName
  sku                 = var.publicIpSku
  resource_group_name = data.azurerm_resource_group.sato.name
  tags                = {}
  domain_name_label   = local.dnsLabelPrefix
  allocation_method   = var.publicIPAllocationMethod
}
