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