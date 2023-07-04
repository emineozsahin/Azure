# create the custom role definition
New-AzRoleDefinition -InputFile $HOME/az104-02a-customRoleDefinition.json

# remove the assignment of the custom role definition 
#$scope = (Get-AzRoleDefinition -Name 'Support Request Contributor (Custom)').AssignableScopes | Where-Object {$_ -like '*managementgroup*'}
#Remove-AzRoleAssignment -ObjectId '[object_ID]' -RoleDefinitionName 'Support Request Contributor (Custom)' -Scope $scope

# remove the custom role definition
#Remove-AzRoleDefinition -Name 'Support Request Contributor (Custom)' -Force

