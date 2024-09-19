resource "azurerm_resource_group" "Vnet-demo" {
  name     = "Vnet-demo"
  location = "eastus"
}
resource "azurerm_virtual_network" "Vnet" {
    name = "Vnet-terraform"
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    address_space = ["172.16.0.0/16"]
    location = azurerm_resource_group.Vnet-demo.location

    depends_on = [ 
        azurerm_resource_group.Vnet-demo 
        ]
    
}
resource "azurerm_subnet" "Web" {
    name="web"
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes =["172.16.0.0/24"]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}
resource "azurerm_subnet" "app" {
    name = "app"
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes = ["172.16.1.0/24"]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}
resource "azurerm_subnet" "db" {
    name = "db"
    resource_group_name = azurerm_resource_group.Vnet-demo.name
    virtual_network_name = azurerm_virtual_network.Vnet.name
    address_prefixes = ["172.16.2.0/24"]
    depends_on = [ azurerm_virtual_network.Vnet ]
  
}