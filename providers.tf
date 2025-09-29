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

  subscription_id = "changeme"
  tenant_id       = "changeme"

  resource_provider_registrations = "none"
}