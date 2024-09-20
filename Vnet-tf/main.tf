resource "azurerm_resource_group" "Vnet-demo" {
  name     = var.resource_group_config.name
  location = var.resource_group_config.location
}
resource "azurerm_virtual_network" "Vnet" {
  name                = var.vnet_config.name
  resource_group_name = azurerm_resource_group.Vnet-demo.name
  address_space       = [var.vnet_config.address_prefix]
  location            = azurerm_resource_group.Vnet-demo.location

  depends_on = [
    azurerm_resource_group.Vnet-demo
  ]

}
resource "azurerm_subnet" "subnets" {
  count                = length(var.subnet_config)
  name                 = var.subnet_config[count.index].name
  resource_group_name  = azurerm_resource_group.Vnet-demo.name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = [var.subnet_config[count.index].address_prefix]
  depends_on           = [azurerm_virtual_network.Vnet]

}