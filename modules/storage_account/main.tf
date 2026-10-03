resource "azurerm_storage_account" "storage" {
  for_each = var.storage_account
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  account_tier = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_storage_container" "name" {
  for_each = var.storage_account
  name = each.value.container_name
  storage_account_id = azurerm_storage_account.storage[each.key].id
}