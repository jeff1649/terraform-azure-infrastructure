app_abbreviation = "tf"
environment      = "poc"
subscription     = "lab"
location         = "centralus"

resource_group_instance = 1

tags = {
  environment = "poc"
  managed_by  = "terraform"
}

# Storage Account
storage_account_instance = 1

# Networking

vnet_instance      = 1
vnet_address_space = ["10.10.0.0/16"]

subnets = {
  apps = {
    purpose          = "apps"
    address_prefixes = ["10.10.1.0/24"]
  }

  private_endpoints = {
    purpose                           = "pe"
    address_prefixes                  = ["10.10.2.0/24"]
    private_endpoint_network_policies = "Disabled"
  }
}