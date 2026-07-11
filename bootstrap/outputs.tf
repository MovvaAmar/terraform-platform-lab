output "resource_group_name" {
  value = azurerm_resource_group.terraform_backend.name
}

output "storage_account_name" {
  value = azurerm_storage_account.terraform_backend.name
}

output "container_name" {
  value = azurerm_storage_container.tfstate.name
}