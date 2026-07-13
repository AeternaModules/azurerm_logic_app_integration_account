variable "logic_app_integration_accounts" {
  description = <<EOT
Map of logic_app_integration_accounts, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - integration_service_environment_id
    - tags
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    sku_name                           = string
    integration_service_environment_id = optional(string)
    tags                               = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

