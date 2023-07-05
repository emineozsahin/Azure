#!bin/bash

# Usage: sh create_RG_and_managed_disk.sh

LOCATION=$(az group show --name 'az104-03c-rg1' --query location --out tsv)
RGNAME='az104-03d-rg1'
DISKNAME='az104-03d-disk1'

#create a resource group
az group create --name $RGNAME --location $LOCATION

#retrieve properties of the newly created resource group
az group show --name $RGNAME

#create a new managed disk
az disk create \
--resource-group $RGNAME \
--name $DISKNAME \
--sku 'Standard_LRS' \
--size-gb 32

#retrieve properties of the newly created disk
az disk show --resource-group $RGNAME --name $DISKNAME

#increase the size of the Azure managed disk to 64 GB
az disk update --resource-group $RGNAME --name $DISKNAME --size-gb 64

#verify that the change took effect
az disk show --resource-group $RGNAME --name $DISKNAME --query diskSizeGb

#change the disk performance SKU to Premium_LRS
az disk update --resource-group $RGNAME --name $DISKNAME --sku 'Premium_LRS'

#verify that the change took effect
az disk show --resource-group $RGNAME --name $DISKNAME --query sku

#Clean up resources
##List all resource groups created throughout the work
az group list --query "[?starts_with(name,'az104-03')].name" --output tsv

##Delete all resource groups you created throughout the work
az group list --query "[?starts_with(name,'az104-03')].[name]" --output tsv | xargs -L1 bash -c 'az group delete --name $0 --no-wait --yes'
