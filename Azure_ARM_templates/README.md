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

This command line prompts several [questions](https://github.com/emineozsahin/Azure/blob/main/Azure_ARM_templates/parametersFile.json) before starting to deploy the resources.  

####Tip
You may want to modify the variable name for the storage account in the custom-built ARM file to prevent concatenating some random letters and numbers to the storage account to make it unique if you are sure the storage name you assigned is unique.

For example, I removed the functions uniq and id in the [ARM script](https://github.com/emineozsahin/Azure/blob/main/Azure_ARM_templates/storage-account%26VM.json) that I have generated.  
"eminestorageaccountName": "[concat('eminestorageaccount')]"
