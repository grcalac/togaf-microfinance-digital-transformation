output "cluster_name" {
  description = "Reference EKS cluster name."
  value       = aws_eks_cluster.this.name
}
