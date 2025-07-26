<#
.SYNOPSIS
Assign a built-in Azure role (e.g., Reader) to a user, group, or service principal.

.DESCRIPTION
Uses Azure CLI to assign a role to a principal at a given scope (usually a resource group).

.PARAMETER UserPrincipalName
The UPN/email of the user to assign the role to.

.PARAMETER Role
The name of the built-in role (Reader, Contributor, etc.)

.PARAMETER ResourceGroup
The name of the resource group to assign the role at.

.EXAMPLE
.\assign-role.ps1 -UserPrincipalName "user@example.com" -Role "Reader" -ResourceGroup "rg-secure"
#>

param (
    [string]$UserPrincipalName,
    [string]$Role = "Reader",
    [string]$ResourceGroup
)

# Get subscription ID
$subscriptionId = az account show --query id -o tsv

# Get user object ID
$objectId = az ad user show --id $UserPrincipalName --query objectId -o tsv

# Get the scope
$scope = "/subscriptions/$subscriptionId/resourceGroups/$ResourceGroup"

# Assign the role
Write-Host "Assigning role '$Role' to '$UserPrincipalName' at scope '$scope'..."
az role assignment create `
    --assignee-object-id $objectId `
    --assignee-principal-type User `
    --role $Role `
    --scope $scope

Write-Host "✅ Role assignment completed."
