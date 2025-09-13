terraform {
   backend "azurerm" {
    resource_group_name   = "rahul-rg"
    storage_account_name  = "rahulbackend12"
    container_name        = "tfstatefile"
    key                   = "terraform.tfstate"
    }
  required_providers{
    azurerm ={
        source = "hashicorp/azurerm"
      version = "4.31.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3bcdc0e9-b6e4-470c-86a7-c19f6b5069c8"
}
