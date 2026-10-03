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