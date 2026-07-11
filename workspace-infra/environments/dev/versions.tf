terraform {
  required_version = ">= 1.9"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.86"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}