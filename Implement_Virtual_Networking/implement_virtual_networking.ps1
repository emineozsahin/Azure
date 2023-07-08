# Deploy virtual machines into the virtual network
$rgName = 'az104-04-rg1'

#deploy two virtual machines 
New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile $HOME/az104-04-vms-loop-template.json `
   -TemplateParameterFile $HOME/az104-04-vms-loop-parameters.json

