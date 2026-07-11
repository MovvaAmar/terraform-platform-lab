terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-platform"
    storage_account_name = "stdbxp7h12zm"
    container_name       = "tfstate"
    key                  = "workspace/dev.tfstate"
    use_azuread_auth     = true
  }
}