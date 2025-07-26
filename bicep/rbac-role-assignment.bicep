param principalId string               // Object ID of user, group, or service principal
param roleDefinitionId string = 'acdd72a7-3385-48ef-bd42-f606fba81ae7' // Reader role ID
param scope string = resourceGroup().id

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(principalId, roleDefinitionId, scope)
  scope: scope
  properties: {
    principalId: principalId
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionId)
    principalType: 'User'  // Change to 'Group' or 'ServicePrincipal' if needed
  }
}
