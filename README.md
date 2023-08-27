# terraform-azurerm-simple-windows

With Secure Defaults from Checkov

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows/workflows/Verify/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-simple-windows.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-simple-windows.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-simple-windows/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-simple-windows&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-simple-windows/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-simple-windows&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a very basic example.

Include **module.simple.tf** this repository as a module in your existing Terraform code:

```terraform
module "simple" {
  source      = "JamesWoolfenden/simple-windows/azurerm"
  version     = "v0.1.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.sato4](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_security_group.sato2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.sato1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_storage_account.sato0](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_virtual_machine.sato5](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine) | resource |
| [azurerm_virtual_machine_extension.sato6](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_extension) | resource |
| [azurerm_virtual_network.sato3](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.sato](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_OSVersion"></a> [OSVersion](#input\_OSVersion) | The Windows version for the VM. This will pick a fully patched image of this given Windows version. | `string` | `"2022-datacenter-azure-edition"` | no |
| <a name="input_addressPrefix"></a> [addressPrefix](#input\_addressPrefix) | n/a | `string` | n/a | yes |
| <a name="input_adminPassword"></a> [adminPassword](#input\_adminPassword) | Password for the Virtual Machine. | `string` | n/a | yes |
| <a name="input_adminUsername"></a> [adminUsername](#input\_adminUsername) | Username for the Virtual Machine. | `string` | n/a | yes |
| <a name="input_extensionName"></a> [extensionName](#input\_extensionName) | n/a | `string` | n/a | yes |
| <a name="input_extensionPublisher"></a> [extensionPublisher](#input\_extensionPublisher) | n/a | `string` | n/a | yes |
| <a name="input_extensionVersion"></a> [extensionVersion](#input\_extensionVersion) | n/a | `string` | n/a | yes |
| <a name="input_networkSecurityGroupName"></a> [networkSecurityGroupName](#input\_networkSecurityGroupName) | n/a | `string` | n/a | yes |
| <a name="input_nicName"></a> [nicName](#input\_nicName) | n/a | `string` | n/a | yes |
| <a name="input_publicIPAllocationMethod"></a> [publicIPAllocationMethod](#input\_publicIPAllocationMethod) | Allocation method for the Public IP used to access the Virtual Machine. | `string` | `"Dynamic"` | no |
| <a name="input_publicIpName"></a> [publicIpName](#input\_publicIpName) | Name for the Public IP used to access the Virtual Machine. | `string` | `"myPublicIP"` | no |
| <a name="input_publicIpSku"></a> [publicIpSku](#input\_publicIpSku) | SKU for the Public IP used to access the Virtual Machine. | `string` | `"Basic"` | no |
| <a name="input_securityType"></a> [securityType](#input\_securityType) | Security Type of the Virtual Machine. | `string` | `"TrustedLaunch"` | no |
| <a name="input_settings"></a> [settings](#input\_settings) | Code to fire on instance start | `string` | n/a | yes |
| <a name="input_subnetName"></a> [subnetName](#input\_subnetName) | n/a | `string` | n/a | yes |
| <a name="input_subnetPrefix"></a> [subnetPrefix](#input\_subnetPrefix) | n/a | `string` | n/a | yes |
| <a name="input_virtualNetworkName"></a> [virtualNetworkName](#input\_virtualNetworkName) | n/a | `string` | n/a | yes |
| <a name="input_vmName"></a> [vmName](#input\_vmName) | Name of the virtual machine. | `string` | `"simple-vm"` | no |
| <a name="input_vmSize"></a> [vmSize](#input\_vmSize) | Size of the virtual machine. | `string` | `"Standard_D2s_v5"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostname"></a> [hostname](#output\_hostname) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang

resource "azurerm_role_definition" "terraform_pike" {
  role_definition_id = local.uuid
  name               = "terraform_pike"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions = [
    "Microsoft.Compute/disks/delete",
    "Microsoft.Compute/disks/read",
    "Microsoft.Compute/virtualMachines/delete",
    "Microsoft.Compute/virtualMachines/powerOff/action",
    "Microsoft.Compute/virtualMachines/read",
    "Microsoft.Compute/virtualMachines/write",
    "Microsoft.Network/networkInterfaces/delete",
    "Microsoft.Network/networkInterfaces/join/action",
    "Microsoft.Network/networkInterfaces/read",
    "Microsoft.Network/networkInterfaces/write",
    "Microsoft.Network/networkSecurityGroups/delete",
    "Microsoft.Network/networkSecurityGroups/read",
    "Microsoft.Network/networkSecurityGroups/write",
    "Microsoft.Network/virtualNetworks/delete",
    "Microsoft.Network/virtualNetworks/read",
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/read",
    "Microsoft.Network/virtualNetworks/write",
    "Microsoft.Resources/subscriptions/resourcegroups/read",
    "Microsoft.Storage/storageAccounts/blobServices/read",
    "Microsoft.Storage/storageAccounts/delete",
    "Microsoft.Storage/storageAccounts/fileServices/read",
    "Microsoft.Storage/storageAccounts/listKeys/action",
    "Microsoft.Storage/storageAccounts/read",
    "Microsoft.Storage/storageAccounts/write"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

locals {
  uuid = uuid()
}

data "azurerm_subscription" "primary" {
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-simple-windows/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2023 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
