# Vnet-tf
* **Varibles** :
   * These are like function arguments in programming languages
   * Reusability across different terraform confugurations
   * [ref](https://developer.hashicorp.com/terraform/language/values/variables)
   * create a file as 'variables.tf'
   * write all the neccessary variables using HCL
* Now, Make changes in main configuration file 
   * By calling varibales created in variables file into main file
* Now run this,
* ```bash
    terraform init
    ```
* ```bash
    terraform validate
    ```
* ```bash
    terraform apply
    ```
* upon successful execution, the above will create the following 
   * creating resource-group named as "Vnet-demo" 
   * creating Virtual network named as "Vnet-terraform"
   * and three Subnets named as
       * web
       * app
       * db 
* [ref](https://github.com/Srikanthkovuri/azure-terraform/tree/main/Vnet-tf)
* To destroy, run this
* ```bash
    terraform destroy
    ```