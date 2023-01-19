variable "rgname" {
  default = "resource group name"
}


variable "location" {
  default = "location name"
}


variable "vnetaddrespace1"{

  description = "vnet ip address"
  type=list(string)
}
