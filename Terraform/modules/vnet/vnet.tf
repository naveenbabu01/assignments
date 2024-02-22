resource "azure_virtual_network""net1"{
    name = var.vname
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.address_space
}

resource "azure_subnet" "sub1"{
    name = "var.sname"
    resource_group_name = "var.resource_group_name"
    virtual_network_name = "var.net1"
    address_prefix = "var.address_prefix"
}


