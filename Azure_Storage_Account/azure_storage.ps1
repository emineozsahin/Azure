# Use the Azure PowerShell and upload the files and then run the script.
# Usage: ./azure_storage.ps1

# 1- Provision the lab environment
$location = 'eastus2'
$rgName = 'az104-07-rg0'

New-AzResourceGroup -Name $rgName -Location $location

# deploy the virtual machine by using the template and parameter files
New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile $HOME/az104-07-vm-template.json `
   -TemplateParameterFile $HOME/az104-07-vm-parameters.json `
   -AsJob

## If the vm size is not available 
# check the RG location
# az group show -n az104-07-rg0 --query location
# list the available skus
# az vm list-skus --location "eastus2"  -o table --query "[? contains(name,'Standard_D2s')].name"

# Cleaning the environment
#Get-AzResourceGroup -Name 'az104-07*'
Get-AzResourceGroup -Name 'az104-07*' | Remove-AzResourceGroup -Force -AsJob