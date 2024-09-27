module "vnet-modules" {
  source              = "Azure/vnet/azurerm"
  version             = "4.1.0"
  resource_group_name = "tf-modules"
  vnet_location       = "centralindia"
  use_for_each        = true
  subnet_names        = ["web", "app", "db"]
  tags = {
    Env = "dev"
  }
  # insert the 3 required variables here
}
module "network-security-group" {
  source              = "Azure/network-security-group/azurerm"
  version             = "4.1.0"
  resource_group_name = "tf-modules"
  custom_rules = [
    {
      priority               = "101"
      name                   = "allowhttp"
      protocol               = "Tcp"
      source_port_range      = "80"
      destination_port_range = "80"
      source_address_prefix  = "0.0.0.0/0"
    }
  ]
  # insert the 1 required variable here
}