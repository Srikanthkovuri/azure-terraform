variable "resource_group_name" {
    type = string
    default = "Vnet-demo"

}
variable "resource_group_location" {
  type = string
  default = "eastus"
}
variable "vnet_name" {
    type = string
    default = "Vnet-terraform"
    description = "Azure vnet from terraform"
}
variable "vnet_cidr" {
    type = string
    default = "172.16.0.0/16"
    description = "vnet cidr range"
  
}
variable "subnet_names" {
    type = list(string)
    default = [ "web","app","db" ]
    description = "subnet names"
}
variable "subnet_cidr" {
    type = list(string)
    default = [ "172.16.0.0/24","172.16.1.0/24","172.16.2.0/24" ]
    description = "subnet cidr ranges"
  
}