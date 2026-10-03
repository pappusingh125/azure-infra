module "rg" {
  source = "../../modules/resource_group"
  rg     = var.rg
}

# module "vnet" {
#   depends_on = [ module.rg ]
#   source = "../../modules/virtual_network"
#   vnet   = var.vnet
# }

# module "subnet" {
#   depends_on = [ var.vnet ]
#   source = "../../modules/subnet"
#   subnet = var.subnet
# }

# # module "storage_account" {
# #   source = "../../modules/storage_account"
# #   storage_account = var.storage
# # }

import {
  to = module.rg.azurerm_resource_group.rg["rg1"]
  id = "/subscriptions/b53909df-47b5-4629-8107-5d109d87d3a2/resourceGroups/pps-rg"
}