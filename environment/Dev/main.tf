module "rg" {
  source = "../../modules/resource_group"
  rg     = var.rg
}

# import {
#   to = module.rg.azurerm_resource_group.rg["rg1"]
#   id = "/subscriptions/b53909df-47b5-4629-8107-5d109d87d3a2/resourceGroups/pps-rg"
# }