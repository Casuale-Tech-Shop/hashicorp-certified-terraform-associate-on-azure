# Terraform Settings Block
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=4.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "eff1fcd7-2c16-426d-ac70-88355b1c94fb"
  tenant_id = "ab250c6f-370f-450d-8c7d-317c077b9688"
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg" {
  location = "eastus"
  name = "my-demo-rg"  
}
