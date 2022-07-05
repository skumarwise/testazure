
data "azurerm_subscription" "current" {}

resource "azurerm_policy_assignment" "example" {
  name                 = "example-policy-assignment"
  scope                = data.azurerm_subscription.current.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  description          = "Policy Assignment created via an Terraform Test"
  display_name         = "Policy Assignment via Terraform"

  
parameters = file("${path.module}/parameters.json")
  /*parameters = <<PARAMETERS
{
  "listOfAllowedLocations": {
    "value": [ "australiaeast" ]
  }
}
PARAMETERS
*/
}
