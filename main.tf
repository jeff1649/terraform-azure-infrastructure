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
  source = "git::https://github.com/jeff1649/azurerm-storage-account.git?ref=v1.0.1"

  app_abbreviation          = var.app_abbreviation
  environment               = var.environment
  subscription              = var.subscription
  instance                  = var.storage_account_instance
  resource_group_name       = module.resource_group.name
  location                  = var.location
  shared_access_key_enabled = false
  tags                      = var.tags
}

module "networking" {
  source = "git::https://github.com/jeff1649/azurerm-networking.git?ref=main"

  app_abbreviation    = var.app_abbreviation
  environment         = var.environment
  subscription        = var.subscription
  instance            = var.vnet_instance
  location            = var.location
  resource_group_name = module.network_resource_group.name

  address_space = var.vnet_address_space
  subnets       = var.subnets

  tags = var.tags
}

module "network_resource_group" {
  source = "git::https://github.com/jeff1649/azurerm-resource-group.git?ref=v1.1.0"

  app_abbreviation = "network"
  environment      = var.environment
  subscription     = var.subscription
  instance         = 1
  location         = var.location
  tags             = var.tags
}