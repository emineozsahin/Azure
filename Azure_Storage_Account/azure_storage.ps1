# Use the Azure POwerShell and upload the files and then run the script.
# Usage: ./azure_storage.ps1

$location = 'eastus2'
$rgName = 'az104-07-rg0'

New-AzResourceGroup -Name $rgName -Location $location

# deploy the virtual machine by using the template and parameter files
New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile $HOME/az104-07-vm-template.json `
   -TemplateParameterFile $HOME/az104-07-vm-parameters.json `
   -AsJob

#