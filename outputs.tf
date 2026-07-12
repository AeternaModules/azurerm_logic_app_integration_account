output "logic_app_integration_accounts_integration_service_environment_id" {
  description = "Map of integration_service_environment_id values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.integration_service_environment_id }
}
output "logic_app_integration_accounts_location" {
  description = "Map of location values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.location }
}
output "logic_app_integration_accounts_name" {
  description = "Map of name values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.name }
}
output "logic_app_integration_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.resource_group_name }
}
output "logic_app_integration_accounts_sku_name" {
  description = "Map of sku_name values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.sku_name }
}
output "logic_app_integration_accounts_tags" {
  description = "Map of tags values across all logic_app_integration_accounts, keyed the same as var.logic_app_integration_accounts"
  value       = { for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : k => v.tags }
}

