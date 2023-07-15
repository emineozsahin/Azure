# IMPLEMENT TRAFFIC MANAGEMENT IN AZURE

A github account called MicrosoftLearning has a [Lab6](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_06-Implement_Network_Traffic_Management.md) which is the source of this project.

# Two other ways to provision the environment:

1. Azure CLI: upload the az104-06-vms-loop-parameters.json and az104-06-vms-loop-template.json files to Azure CLI and run the implement_traffic_management.ps1 script
2. Terraform

I followed the Microsoft Learning steps for the task 2-6.

## Provision the environment
[Provisioning](https://www.redhat.com/en/topics/automation/what-is-provisioning) is the process of setting up IT infrastructure. In this repository I wrote a [bash script](https://github.com/emineozsahin/Azure/blob/main/Azure_Implement_Traffic_Management/implement_traffic_management.sh) for provisioning the environment that is figured in the [project.png](https://github.com/emineozsahin/Azure/blob/main/Azure_Implement_Traffic_Management/project.png) file.

```sh
sh implement_traffic_management.sh
```

I have also used the arm templates (called az104-06-vms-loop-parameters.json and az104-06-vms-loop-template.json) that I obtained from MicrosoftLearning-Lab6 as a second method and used them by following the [instructions](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_06-Implement_Network_Traffic_Management.md).

I'll update the repository by adding terraform files as a third way to automate the provisioning.

## Configure hub and spoke network topology
hub: az104-06-vnet01
spoke: az104-06-vnet2 and az104-06-vnet3

## Test transitivity of virtual networking peering

## Configure routing in the hub and spoke topology

## Implement Azure Load Balancer

## Implement Azure Application Gateway



