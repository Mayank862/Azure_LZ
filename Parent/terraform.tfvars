 resouce = {

  rg_mayank = {

    location = "centralindia"
           }
}

sto = {

mayank05007 = {

  rg      = "rg_mayank"
  location                 = "centralindia"
  act             = "Standard"
  art = "LRS"
}
  
}

virtual = {

 VNET_MOD = {

  add       = ["10.0.15.0/24"]
  loc           = "centralindia"
  rg = "rg_mayank"
}
 }
 
 sub = {

 Frontend_Subnet = {

  rg      = "rg_mayank"
  vnet = "VNET_MOD"
  ap= ["10.0.15.0/25"]
 }  

backend_Subnet = {

  rg      = "rg_mayank"
  vnet = "VNET_MOD"
  ap= ["10.0.15.128/25"]
 }  

 }
