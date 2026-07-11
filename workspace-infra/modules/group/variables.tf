variable "groups" {
  description = "Databricks groups to create"

  type = map(object({
    display_name = string

    workspace_access           = optional(bool, true)
    allow_cluster_create       = optional(bool, false)
    allow_instance_pool_create = optional(bool, false)
    databricks_sql_access      = optional(bool, false)
  }))
}


