terraform {
backend "azurerm" {
resource_group_name = "tfstate-rg"
storage_account_name = "tfstateaccount9090"
container_name = "tfstate"
key = "javaapp.tfstate"
}
}
