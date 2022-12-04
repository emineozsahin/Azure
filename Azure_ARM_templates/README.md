# Azure Resource Manager Template Usage

[Create and deploy ARM templates by using the Azure portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/quickstart-create-templates-use-the-portal)


```
# Generate a Resource Group
az group create -l eastus2 -n MyResourceGroup
```

Custome ARM templates can be generated using the "Build your own template in the editor" section under the "Deploy a Custome Templates" section on Azure Portal. Then the template can be deployed on the Azure portal. Also, the template can be deployed via Azure CLI, as shown below.

```
# Deploy an Azure ARM template
az deployment group create --resource-group MyResourceGroup  --template-file storage-account.json
```

This command line prompts several questions 

