
output "allowed_locations_id" {
  value = data.azurerm_policy_definition.allowed_locations.id
}
output "allowed_resource_types" {
  value = data.azurerm_policy_definition.allowed_resource_types.id
}