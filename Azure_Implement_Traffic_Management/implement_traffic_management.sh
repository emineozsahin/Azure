#! bin/bash

for i in az104-06-rg1 az104-06-rg4 az104-06-rg5
do
  az group delete --name $i
done

basename="az104-06"
location="eastus2"

# Task1
## Generate three resource groups named az104-06-rg1, az104-06-rg4, az104-06-rg6
for i in rg1 rg4 rg5; do az group create -l $location -n ${basename}-$i;done

## Generate 3 vnets and its subnet0 in az104-06-rg1 named az104-06-vnet01, az104-06-vnet2, az104-06-vnet3
for i in vnet01-60 vnet2-62 vnet3-63
do
   num=`echo $i | sed 's/vnet[0-9]*-//g'`
   az network vnet create \
   --address-prefixes 10.${num}.0.0/22 \
   --name ${basename}-${i%-*} \
   --resource-group az104-06-rg1 \
   --subnet-name Subnet0 \
   --subnet-prefixes 10.${num}.0.0/24
done

## Generate Subnet1 and Subnet-appgw in vnet01, az104-06-rg1
for i in Subnet1_1.0/24 Subnet-appgw_3.224/27
do
name=`echo $i |sed 's/_.*//g'`
num=`echo $i |sed 's/.*_//g'`
az network vnet subnet create \
  -g az104-06-rg1 \
  --vnet-name az104-06-vnet01 \
  -n $name \
  --address-prefixes 10.60.${num}
done

## Generate VMs in az104-06-rg1
for i in az104-06-vnet01_0 az104-06-vnet01_1 az104-06-vnet2_0 az104-06-vnet3_0
do
vnet=`echo $i| sed 's/_.*//g'`
subnet=`echo $i| sed 's/.*_//g'`
#echo $vnet $subnet
az vm create \
    --resource-group az104-06-rg1 \
    --location $location \
    --name ${basename}-vm${subnet} \
    --image UbuntuLTS \
    --public-ip-sku Standard \
    --admin-username  ${basename}-vm${subnet}\
    --vnet-name $vnet \
    --subnet Subnet${subnet} \
    --size Standard_DS2_v2 \
    --nsg ${basename}-vm${subnet}_NSG \
    --public-ip-address ${basename}-vm${subnet}_PIP \
    --generate-ssh-keys \
    --ssh-key-name vm${subnet}_ssh_key.pem
done


## Generate pips in rg4 and rg5



# Task 2 and Task 3: Peering
az network vnet peering create --name
                               --remote-vnet
                               --resource-group
                               --vnet-name
                               [--allow-forwarded-traffic]
                               [--allow-gateway-transit]
                               [--allow-vnet-access]
                               [--use-remote-gateways]


# Task 4: Roles



# Task 5: Generate lb4 in rg4



# Task 6: Generate appgw5 in rg5



