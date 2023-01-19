provider   "azurerm"   {
   version   =   "2.92.0"
     subscription_id="d1848034-2af9-4bfb-b87f-4eebf3952a9b"
     tenant_id="944f3a23-f566-4fc6-b640-5821d8b7a841"
     client_id="69844665-1b04-4df7-8ad6-a14bcbf5b5bd"
   features   {}
 }

resource   "azurerm_resource_group"   "rg"   {
   name   =   var.rgname
   location   =   var.location     #"northeurope"
 }
resource   "azurerm_virtual_network"   "myvnet"   {
   count  =   2
   name   =   "my-vnet${count.index}"
   address_space   =   [ element(var.vnetaddrespace1, count.index) ]
   location   =   "northeurope"
   resource_group_name   =   azurerm_resource_group.rg.name
 }

