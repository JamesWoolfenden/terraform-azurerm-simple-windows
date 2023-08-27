module "simple" {
  source                   = "../../"
  addressPrefix            = "10.0.0.0/16"
  adminPassword            = random_password.password.result
  adminUsername            = "admin"
  extensionName            = "CustomScript"
  extensionPublisher       = "Microsoft.Azure.Extensions"
  extensionVersion         = "2.0"
  settings                 = <<SETTINGS
 {
  "commandToExecute": "hostname && uptime"
 }
SETTINGS
  networkSecurityGroupName = "examplea"
  nicName                  = "examplea"
  subnetName               = "examplea"
  subnetPrefix             = "10.0.0.0/24"
  virtualNetworkName       = "examplea"
}


resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
