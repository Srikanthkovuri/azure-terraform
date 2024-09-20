variable "resource_group_config" {
  type = object({
    name     = string
    location = string
  })
  description = "Resource-group config"
  default = {
    name     = "Vnet-demo"
    location = "eastus"
  }

}
variable "vnet_config" {
  type = object({
    name           = string
    address_prefix = string
  })
  description = "Vnet configuration"
  default = {
    name = "Vnet-terraform"
  address_prefix = "172.16.0.0/16" }
}
variable "subnet_config" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
  description = "subnet config"
  default = [{
    name           = "web"
    address_prefix = "172.16.0.0/24"
    },
    {
      name           = "app"
      address_prefix = "172.16.1.0/24"
    },
    {
      name           = "db"
      address_prefix = "172.16.2.0/24"
  }]
}