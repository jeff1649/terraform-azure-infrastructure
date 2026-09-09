module "resource_group" {
  source = "git::https://github.com/jeff1649/azurerm-resource-group.git?ref=v1.1.0"

  app_abbreviation = var.app_abbreviation
  environment      = var.environment
  subscription     = var.subscription
  instance         = var.resource_group_instance
  location         = var.location
  tags             = var.tags
}

module "storage_account" {
  source = "git::https://github.com/jeff1649/azurerm-storage-account.git?ref=v1.0.0"

  app_abbreviation   = var.app_abbreviation
  environment        = var.environment
  subscription       = var.subscription
  instance           = var.storage_account_instance
  resource_group_name = module.resource_group.name
  location           = var.location
  tags               = var.tags
}