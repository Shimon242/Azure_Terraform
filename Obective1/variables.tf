# Required variable (no default)
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

# Default variable
variable "location" {
  description = "Azure region"
  type        = string
  default     = "canadacentral"
}

# Default variable
variable "vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "Standard_B2s"
}

# Required variable
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM (demo only)"
  type        = string
  sensitive   = true
}
