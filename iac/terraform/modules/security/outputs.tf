output "cluster_security_group_id" {
  description = "Reference cluster security group ID."
  value       = aws_security_group.cluster.id
}
