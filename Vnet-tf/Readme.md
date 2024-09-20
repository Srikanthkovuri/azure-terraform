# Vnet-tf
* **Varibles** :
   * These are like function arguments in programming languages
   * Reusability across different terraform confugurations
   * [ref](https://developer.hashicorp.com/terraform/language/values/variables)
   * create a file as 'variables.tf'
   * write all the neccessary variables using HCL
   * [ref](https://github.com/Srikanthkovuri/azure-terraform/commit/bab8b5639953aae2101995ab0a0679ba64c7996a)
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
* [ref](https://github.com/Srikanthkovuri/azure-terraform/commit/bab8b5639953aae2101995ab0a0679ba64c7996a)
* If we want to create a infrastructure by passing a dynamic user data,
   * Then, we have to create a file with extension as ".tfvars"
   * Describe all the data in this file w.r.t to variable objects created in "varaibles.tf" file 
   * We can pass this file while applying itself
   * Now, to apply this 
   * ```bash
       terraform apply --var-file='filename.tfvars'
       ```
* Then, upon successful execution we will be able to see infrastructure which we passed in '.tfvars' file
* In my case,
* [ref](https://github.com/Srikanthkovuri/azure-terraform/blob/main/Vnet-tf/env.tfvars)
* To destroy, run this
* ```bash
    terraform destroy
    ```
