az group create --name chrome-vm-rg --location westeurope
az deployment group create \
  --resource-group chrome-vm-rg \
  --template-file azuredeploy.json \
  --parameters adminPassword='YourPassword123!'
