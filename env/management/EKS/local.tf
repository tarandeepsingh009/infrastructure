locals {
  common_tags        = { ENV : "QA", OWNER : "DEVOPS", PROJECT : "CATALOG_MIGRATION", COMPONENT : "EKS", COMPONENT_TYPE : "BUILDPIPER" }
  worker_group1_tags = { "kubernetes.io/cluster/ziploan-staging-cluster" : "owned" }
  worker_group2_tags = { "kubernetes.io/cluster/ziploan-staging-cluster" : "owned" }
}