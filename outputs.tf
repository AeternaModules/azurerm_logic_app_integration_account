output "logic_app_integration_accounts" {
  description = "All logic_app_integration_account resources"
  value       = azurerm_logic_app_integration_account.logic_app_integration_accounts
}
output "logic_app_integration_accounts_integration_service_environment_id" {
  description = "List of integration_service_environment_id values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.integration_service_environment_id]
}
output "logic_app_integration_accounts_location" {
  description = "List of location values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.location]
}
output "logic_app_integration_accounts_name" {
  description = "List of name values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.name]
}
output "logic_app_integration_accounts_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.resource_group_name]
}
output "logic_app_integration_accounts_sku_name" {
  description = "List of sku_name values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.sku_name]
}
output "logic_app_integration_accounts_tags" {
  description = "List of tags values across all logic_app_integration_accounts"
  value       = [for k, v in azurerm_logic_app_integration_account.logic_app_integration_accounts : v.tags]
}

