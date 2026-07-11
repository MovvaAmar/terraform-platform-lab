resource "databricks_group" "this" {

  for_each = var.groups

  display_name = each.value.display_name

  workspace_access           = each.value.workspace_access
  allow_cluster_create       = each.value.allow_cluster_create
  allow_instance_pool_create = each.value.allow_instance_pool_create
  databricks_sql_access      = each.value.databricks_sql_access
}