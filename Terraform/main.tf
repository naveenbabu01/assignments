terraform{
    required_providers {
      azurerm = {
        source = "azurerm/hashicorp"
        version = "1.5.7"
      }
    }
}

provider azurerm{
    features{
        subscription_Id =""
        tenant_id       =""
        client_id       =""
        client_secret   =""
    }
}

resource "azure_resource_group" "rg1" {
    name = "eaxample"
    location = "eastus"
    }


    module "vnet" {

      source = "./modules/vnet"
      resource_group_name = var.rg_name
      location = var.location
      name = var.vnet_name

      
    }

    module "vm" {
      source = "./modules/VM"
      resource_group_name = var.rg_name
      location = var.location
      name = var.vm_name

    }






