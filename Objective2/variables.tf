# Existing Resource Group (required)
variable "resource_group_name" {
  description = "Name of the existing Azure resource group"
  type        = string
}

# Environment: dev, test, prod
variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

# Default VM size map
variable "vm_sizes" {
  description = "VM sizes per environment"
  type        = map(string)
  default = {
    dev  = "Standard_B2s"
    test = "Standard_B2ms"
    prod = "Standard_D4s_v3"
  }
}

# VM Admin Username
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

# VM Admin Password (sensitive)
# Demonstrates precedence: default, tfvars, CLI
variable "admin_password" {
  description = "Admin password for the VM (demo only)"
  type        = string
  sensitive   = true
  default     = "DefaultPassword123!"  # lowest precedence
}
