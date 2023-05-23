# --------------------------------------------------------
# Setup
# --------------------------------------------------------


provider "azurerm" {
  version         = "~> 2.99.0"
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  #client_id       = var.client_id
  #client_secret   = var.client_secret


  features {}
}


# Set the terraform backend
terraform {
  required_version = "~> 1.2.6"
  backend "azurerm" {} #Backend variables are initialized through the secret and variable folders
}
