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
      version = "4.75.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3b770c7c-3dd0-4873-ab89-7c5f4695e464"
}
