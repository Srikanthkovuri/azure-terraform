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
  # insert the 3 required variables here
}
module "network-security-group" {
  source              = "Azure/network-security-group/azurerm"
  version             = "4.1.0"
  resource_group_name = "tf-modules"
  custom_rules = [
    {
      priority               = "101"
      name                   = "allowhttp"
      protocol               = "Tcp"
      source_port_range      = "80"
      destination_port_range = "80"
      source_address_prefix  = "0.0.0.0/0"
    }
  ]
  # insert the 1 required variable here
}
module "linuxservers" {
  source                           = "Azure/compute/azurerm"
  resource_group_name              = "tf-modules"
  vm_hostname                      = "srikanth"
  nb_public_ip                     = 0
  remote_port                      = "22"
  nb_instances                     = 1
  vm_os_publisher                  = "Canonical"
  vm_os_offer                      = "UbuntuServer"
  vm_os_sku                        = "18.04-LTS"
  vnet_subnet_id                   = module.vnet-modules.vnet_subnets[0]
  boot_diagnostics                 = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 2
  data_disk_size_gb                = 64
  data_sa_type                     = "Premium_LRS"
  enable_ssh_key                   = true
  ssh_key_values                   = ["ssh-rsa AAAAB3NzaCyc2EAAAADAQABAAACAQDK87Bt3PFCeoEfPT7yv/w//T5ptjeMB2ksKjDm6hcaOROj6bvW4wAcmfQEqbwONcYP6E34dy6vKHON9inPEhvbp7rzPhC1uRKwUqhLNHnWPh924yRivf8z5JLWpG" ]
  vm_size                          = "Standard_D4s_v3"
  delete_data_disks_on_termination = true

  tags = {
    environment = "dev"
  }

  enable_accelerated_networking = true
}
