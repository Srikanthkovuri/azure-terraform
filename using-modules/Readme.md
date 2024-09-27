# Modules block
* This folder helps in creating resources with the help of **modules block**
* Modules -> These are nothing but a specific templates which were written by providers/organiztions
* We use those modules to create our own infrastructure
* These helps in reducing number of code lines
* Here, I created resources with
    *  Less number of code lines  
    *  Quickly
    *  With the help of Modules block
* We hae to pass required attributes of our own to the module block, Like below
*  ```terraform
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
    }
    ```
[refer here](https://github.com/Srikanthkovuri/azure-terraform/blob/main/using-modules/modules.tf)
* The above module block will create  
    * Vnet
    * Subnets
    * Network Security Group
    * Virtual Machine
* [note]: Everytime when we add new module block, we have to initialize the terraform
    ```bash
      terraform init
    ```
* Then, apply 
    ```bash
      terraform apply
    ```