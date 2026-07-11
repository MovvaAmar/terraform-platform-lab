variable "cluster_policies" {
  description = "Databricks cluster policies"

  type = map(object({
    name        = string
    description = optional(string)

    definition = any
  }))
}