module "resource_group" {
  source = "git::https://github.com/jeff1649/azurerm-resource-group.git?ref=v1.0.0"

  app_abbreviation = var.app_abbreviation
  environment      = var.environment
  subscription     = var.subscription
  instance         = var.resource_group_instance
  location         = var.location
  tags             = var.tags
}