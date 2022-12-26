#!bin/bash
# Usage: bash VM.sh RGname AdminName

# Create a resource group
az group create --name ${1}RG --location eastus

# Create a Windows VM
az vm create \
    --resource-group ${1}RG \
    --name myWindowsVM \
    --location eastus \
    --image Win2022AzureEditionCore \
    --public-ip-sku Standard \
    --admin-username $2


# Create an Ubuntu VM
az vm create \
    --resource-group ${1}RG \
    --name myUbuntuVM \
    --location eastus \
    --image UbuntuLTS \
    --admin-username $2 \
    --generate-ssh-keys \
    --public-ip-sku Standard
