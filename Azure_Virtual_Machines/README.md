# Generating VMs using Azure CLI, ARM templates and Azure Portal

This project includes a [bash file](https://github.com/emineozsahin/Azure/blob/main/Azure_Virtual_Machines/VM.sh) and an [arm template](https://github.com/emineozsahin/Azure/blob/main/Azure_Virtual_Machines/arm_for_vm.json) to generate a Windows VM and an Ubuntu VM.

Here is a [pdf file](https://github.com/emineozsahin/Azure/blob/main/Azure_Virtual_Machines/VM.pdf) to show the steps.

I generated a key in Azure portal for WindowsVMs

I used Microsoft Remote Control App to connect Windows VM.

```sh
# Deploy an Azure ARM template
az deployment group create --resource-group emine-dev  --template-file arm_for_vm.json

# Connect to the Ubuntu VM via ssh
ssh -i ~/.ssh/myUbuntuVMssh_key.pem emine@20.168.210.173

#I also tried to use ssh key to connect Windows VM.
# mv the downloaded key to the .ssh
mv Downloads/myWindowsVMssh_key.pem ~/.ssh/

# change permission to use the key
chmod 400 ~/.ssh/myWindowsVMssh_key.pem
```
