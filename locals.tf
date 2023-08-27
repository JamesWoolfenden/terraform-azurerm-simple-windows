locals {
  dnsLabelPrefix     = lower(format("%%s-%%s", var.vmName, substr(uuid(), 0, 8)))
  location           = data.azurerm_resource_group.sato.location
  maaEndpoint        = substr("emptyString", 0, 0)
  storageAccountName = format("bootdiags%%s", substr(uuid(), 0, 8))
}
