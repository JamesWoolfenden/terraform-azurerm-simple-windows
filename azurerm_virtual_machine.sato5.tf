resource "azurerm_virtual_machine" "sato5" {
  location              = local.location
  name                  = var.vmName
  resource_group_name   = data.azurerm_resource_group.sato.name
  vm_size               = var.vmSize
  network_interface_ids = [azurerm_network_interface.sato4, ]
  boot_diagnostics {
    enabled     = true
    storage_uri = azurerm_storage_account.sato0.primary_blob_endpoint
  }
  os_profile {
    computer_name  = var.vmName
    admin_username = var.adminUsername
    admin_password = var.adminPassword
  }
  storage_data_disk {
    name          = "data0"
    create_option = "Empty"
    disk_size_gb  = 1023
    lun           = 0
  }
  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.OSVersion
    version   = "latest"
  }

  storage_os_disk {
    name              = "os0"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  depends_on = [azurerm_network_interface.sato4, azurerm_storage_account.sato0, ]
}
