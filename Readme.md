TERRAFORM 
-----------
* Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. 
* It allows you to define and provision infrastructure using a high-level configuration language called **HashiCorp Configuration Language (HCL) or JSON**. 
* Terraform supports a wide range of cloud providers, including AWS, Azure, Google Cloud, and many others, making it a versatile tool for managing infrastructure across multiple platforms.
## Key Features
* **Infrastructure as Code**: Define your infrastructure in configuration files that can be versioned and shared.
* **Multi-Cloud Support**: Manage resources across different cloud providers and on-premises environments.
* **Resource Management**: Automate the creation, update, and deletion of infrastructure resources.
## Basic Workflow
* Write: Define your infrastructure in configuration files.
* Plan: Generate an execution plan to preview changes.
* Apply: Apply the changes to your infrastructure.
* Destroy: Remove infrastructure resources when they are no longer needed.
## Prerequiscites
* terraform 
* aws cli
* azure cli
# using-modules
* This folder has modules which helps in
   * creating resource-group
   * creating Virtual network
   * Subnet
   * network-security-group with custom rules
   * and finall virtual machine
* With the help of modules 
[refer here](https://github.com/Srikanthkovuri/azure-terraform/tree/main/using-modules)
# Vnet-tf
* This folder has modules which hepls in
   * creating resource-group
   * creating Virtual network
   * and Subnet 
* [ref](https://github.com/Srikanthkovuri/azure-terraform/tree/main/Vnet-tf)
# sample.tf
* we need to create a file with extension as '.tf'
* In this **sample.tf**,
   * used azure as provider 
   * I had created a resource group with name as 'test'
* ```bash
    terraform init
    ```
* ```bash
    terraform validate
    ```
* ```bash
    terraform apply
    ```
* To destroy,run this
* ```bash
    terraform destroy
    ```
* [ref](https://github.com/Srikanthkovuri/azure-terraform/blob/main/sample.tf)
