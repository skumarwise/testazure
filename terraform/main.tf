resource "azurerm_policy_assignment" "example" {
  name                 = "example-policy-assignment"
  scope                = data.azurerm_subscription.current.id
  #policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  policy_definition_id = data.azurerm_policy_definition.allowed_locations.id
  description          = "Policy Assignment created via an Terraform Test"
  display_name         = "Policy Assignment via Terraform"
  parameters = file("${path.module}/parameters.json")
}

resource "azurerm_policy_assignment" "allowed_resource_types" {
  name                 = "allowed_resource_types-policy-assignment"
  scope                = data.azurerm_subscription.current.id
  #policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  policy_definition_id = data.azurerm_policy_definition.allowed_resource_types.id
  description          = "Allowed Resource Types:Policy Assignment created via an Terraform Test"
  display_name         = "Allowed Resource Types:Policy Assignment via Terraform"
  parameters = file("${path.module}/params/allowed_resource_types.json")
}