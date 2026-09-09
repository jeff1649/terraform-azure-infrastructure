output "resource_group_id" {
  description = "ID of the deployed resource group."
  value       = module.resource_group.id
}

output "resource_group_name" {
  description = "Name of the deployed resource group."
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "Location of the deployed resource group."
  value       = module.resource_group.location
}

output "storage_account_id" {
  description = "ID of the deployed storage account."
  value       = module.storage_account.id
}

output "storage_account_name" {
  description = "Name of the deployed storage account."
  value       = module.storage_account.name
}

output "storage_account_primary_blob_endpoint" {
  description = "Primary Blob endpoint of the deployed storage account."
  value       = module.storage_account.primary_blob_endpoint
}