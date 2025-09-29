terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.43.0"
    }
  }
  
  cloud {
    organization = "HandsOn-with-Terraform-on-Azure"
    
    workspaces {
      name = "Hands-On_With_Terraform_On_Azure"
    }
  }
}

provider "azurerm" {
  features {}
  
  subscription_id = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  
  resource_provider_registrations = "none"
}