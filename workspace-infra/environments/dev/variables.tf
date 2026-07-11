variable "databricks_host" {
  description = "Azure Databricks Workspace URL"
  type        = string
}

variable "groups" {
  description = "Groups for this environment"

  type = map(object({
    display_name = string
  }))
}


variable "cluster_policies" {
  description = "Cluster policies for this environment"

  type = map(object({
    name        = string
    description = optional(string)

    definition = any
  }))
}