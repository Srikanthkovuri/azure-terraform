resource "azurerm_resource_group" "Vnet-demo" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_virtual_network" "Vnet" {
    name = var.vnet_name
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    address_space = [var.vnet_cidr]
    location = azurerm_resource_group.Vnet-demo.location

    depends_on = [ 
        azurerm_resource_group.Vnet-demo 
        ]
    
}
resource "azurerm_subnet" "Web" {
    name=var.subnet_names[0]
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes =[var.subnet_cidr[0]]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}
resource "azurerm_subnet" "app" {
    name = var.subnet_names[1]
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes = [var.subnet_cidr[1]]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}
resource "azurerm_subnet" "db" {
    name = var.subnet_names[2]
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes = [var.subnet_cidr[2]]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}