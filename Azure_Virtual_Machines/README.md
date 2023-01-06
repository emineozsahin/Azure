#

I generated a key in Azure portal for WindowsVMs

I used Microsoft Remote Control App to connect Windows VM. I also tried to use ssh key to connect Windows VM.

```sh
# mv the downloaded key to the .ssh
mv Downloads/myWindowsVMssh_key.pem ~/.ssh/

# change permission to use the key
chmod 400 ~/.ssh/myWindowsVMssh_key.pem

# Connect to the Ubuntu VM via ssh
ssh -i ~/.ssh/myUbuntuVMssh_key.pem emine@20.168.210.173

# Deploy an Azure ARM template
az deployment group create --resource-group emine-dev  --template-file arm_for_vm.json

```
