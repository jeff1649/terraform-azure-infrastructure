variable "app_abbreviation" {
  description = "Abbreviated application name used for resource naming."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "subscription" {
  description = "Subscription abbreviation used for resource naming."
  type        = string
}

variable "resource_group_instance" {
  description = "Instance number for the resource group."
  type        = number
  default     = 1
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "tags" {
  description = "Tags applied to deployed resources."
  type        = map(string)
  default     = {}
}

variable "storage_account_instance" {
  description = "Instance number for the storage account."
  type        = number
  default     = 1
}

variable "vnet_instance" {
  description = "Instance number for the virtual network."
  type        = number
  default     = 1
}

variable "vnet_address_space" {
  description = "Address space assigned to the virtual network."
  type        = list(string)
}

variable "subnets" {
  description = "Subnets to create in the virtual network."

  type = map(object({
    purpose          = string
    instance         = optional(number, 1)
    address_prefixes = list(string)

    private_endpoint_network_policies = optional(string, "Enabled")

    delegations = optional(map(object({
      name    = string
      actions = optional(list(string), [])
    })), {})
  }))
}