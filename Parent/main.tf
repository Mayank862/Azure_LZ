variable "resouce" {}
variable "sto" {}
variable "virtual" {}
variable "sub" {}


module "resourcegroup" {

source = "../Child/azurerm_rg"
rgs = var.resouce

  
}

module "storage" {
depends_on = [module.resourcegroup]
source = "../Child/azurerm_Storage"
stgs = var.sto
  
}

module "vnet" {

depends_on = [ module.resourcegroup ]
source = "../Child/azurerm_vnet"
vnets = var.virtual
  
}

module "subnet" {
depends_on = [ module.vnet ]
source = "../Child/azurerm_Subnet"
subnets = var.sub
  
}

