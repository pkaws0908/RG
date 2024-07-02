

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.109.0"
    }
  } 
  backend "azurerm" {
    resource_group_name  = "devrg001"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "devsa001856"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "devcont001"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }  

}

provider "azurerm" {
  features {}
    

}

