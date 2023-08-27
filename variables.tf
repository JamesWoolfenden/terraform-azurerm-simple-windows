
variable "adminPassword" {
  type        = string
  sensitive   = true
  description = "Password for the Virtual Machine."
}

variable "adminUsername" {
  type        = string
  description = "Username for the Virtual Machine."
}

variable "publicIpName" {
  type        = string
  default     = "myPublicIP"
  description = "Name for the Public IP used to access the Virtual Machine."
}

variable "OSVersion" {
  type        = string
  default     = "2022-datacenter-azure-edition"
  description = "The Windows version for the VM. This will pick a fully patched image of this given Windows version."
}

variable "publicIpSku" {
  type        = string
  default     = "Basic"
  description = "SKU for the Public IP used to access the Virtual Machine."
}

variable "securityType" {
  type        = string
  default     = "TrustedLaunch"
  description = "Security Type of the Virtual Machine."
}

variable "vmName" {
  type        = string
  default     = "simple-vm"
  description = "Name of the virtual machine."
}

variable "vmSize" {
  type        = string
  default     = "Standard_D2s_v5"
  description = "Size of the virtual machine."
}

variable "publicIPAllocationMethod" {
  type        = string
  default     = "Dynamic"
  description = "Allocation method for the Public IP used to access the Virtual Machine."
}

variable "extensionName" {
  type        = string
  description = ""
}

variable "extensionVersion" {
  type        = string
  description = ""
}

variable "nicName" {
  type        = string
  description = ""
}

variable "subnetName" {
  type        = string
  description = ""
}

variable "subnetPrefix" {
  type        = string
  description = ""
}

variable "addressPrefix" {
  type        = string
  description = ""
}

variable "virtualNetworkName" {
  type        = string
  description = ""
}

variable "networkSecurityGroupName" {
  type        = string
  description = ""
}

variable "extensionPublisher" {
  type        = string
  description = ""
}

variable "settings" {
  type        = string
  description = "Code to fire on instance start"
}
