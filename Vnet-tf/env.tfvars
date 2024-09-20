resource_group_config = {
  name = "Vnet-dev"
  location = "centralindia"
}
vnet_config = {
  name = "Vnet"
  address_prefix = "192.168.0.0/16"
}
subnet_config = [ {
  name = "web-1"
  address_prefix = "192.168.1.0/24"
},
{
    name = "app-1"
    address_prefix = "192.168.2.0/24"
},
{
    name = "db-1"
    address_prefix = "192.168.3.0/24"
} ]