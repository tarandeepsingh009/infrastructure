output "endpoint" {
  value = module.petpark_eks_cluster.endpoint
}

output "node_iam_role_arn" {
  value = module.petpark_eks_cluster.eks_cluster_arn
}

output "kubeconfig-certificate-authority-data" {
  value = module.petpark_eks_cluster.kubeconfig-certificate-authority-data
}

output "eks_cluster_id" {
  value = module.petpark_eks_cluster.eks_cluster_id
}

output "eks_cluster_arn" {
  value = module.petpark_eks_cluster.eks_cluster_arn
}