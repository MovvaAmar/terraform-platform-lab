resource "databricks_cluster_policy" "this" {

  for_each = var.cluster_policies

  name        = each.value.name
  description = each.value.description

  definition = jsonencode(each.value.definition)
}