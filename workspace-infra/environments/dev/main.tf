module "groups" {
  source = "../../modules/group"

  groups = var.groups
}

module "cluster_policies" {
  source = "../../modules/cluster-policy"

  cluster_policies = var.cluster_policies
}