output "group_ids" {
  description = "IDs of created Databricks groups"

  value = {
    for k, v in databricks_group.this :
    k => v.id
  }
}

output "group_names" {
  description = "Names of created Databricks groups"

  value = {
    for k, v in databricks_group.this :
    k => v.display_name
  }
}