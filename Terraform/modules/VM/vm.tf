resource "azurerm_virtual_network" "vnet2" {
    name = "var.name"
    location = "var.location"
    resource_group_name = "var.resource_group_name"
    address_prefix = "var.address_prefix"
}

resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}


resource "azurerm_network_interface" "nic1"{
     name =
     location = ""
     resource_group_name = ""


ip configuration{
    name =
    subnet_id = ""
    private_ip_address_allocation =""
}
}

resource "azurerm_windows_virtual_machine" "vm1"{
    name =""
    location =""
    resource_group_name = ""
    size =""
    admin_username = ""
    admin_password = ""
    network_interface_ids = ""
}

source_image_reference{
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
}