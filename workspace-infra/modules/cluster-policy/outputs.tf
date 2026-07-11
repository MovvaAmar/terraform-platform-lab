output "policy_ids" {
  value = {
    for k, v in databricks_cluster_policy.this :
    k => v.id
  }
}

output "policy_names" {
  value = {
    for k, v in databricks_cluster_policy.this :
    k => v.name
  }
}