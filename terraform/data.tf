data "azurerm_subscription" "current" {}

data "azurerm_policy_definition" "allowed_locations" {
  display_name = "Allowed locations"
}


data "azurerm_policy_definition" "allowed_resource_types" {
  display_name = "Allowed Resource Types"
}

