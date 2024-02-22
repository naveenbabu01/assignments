variable "rg_name" {

description = "The name of the resource group in which the resources will be created." 
type = string
}
variable "vnet_name" {
description = "The name of the resource group in which the vnet and subnets belong"  
type = string
}

variable "location" {
description = "(Optional) The location in which the resources will be created." 
type = string
default= ""
}

