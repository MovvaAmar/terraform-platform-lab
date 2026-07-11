resource "random_string" "storage_suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "terraform_backend" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "terraform_backend" {
  name                = "${var.storage_account_prefix}${random_string.storage_suffix.result}"
  resource_group_name = azurerm_resource_group.terraform_backend.name
  location            = azurerm_resource_group.terraform_backend.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"

  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.terraform_backend.id
  container_access_type = "private"
}