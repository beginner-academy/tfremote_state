# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  backend "azurerm" {
    resource_group_name  = "RGinfra-platform-rg-prod11"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "infratfstate12"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "weekdaytfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "learning/tf/rg.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "fdc87e1b-fe51-4e21-b2de-fd185221f846"
  client_secret   = "CM68Q~uEJ_n1UPPmg~OiiHaBr4dA6zFRRjFLzabQ"
  tenant_id       = "90f8a8f8-fcda-40f9-9bb2-a40ce4eb043b"
  subscription_id = "714bac87-66c7-4f7b-baf9-52b5580e583c"
}